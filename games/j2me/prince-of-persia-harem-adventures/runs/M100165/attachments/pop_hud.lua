local source = debug.getinfo(1, 'S').source
local script_dir = source:match('^@(.+[\\/])[^\\/]+$') or ''
local CSV_PATH = script_dir .. 'pop_addresses.csv'
local DOMAIN = 'Java Heap'
local SHOW_HUD = true
local SHOW_TASTUDIO_COLUMNS = true

local HUD_X = 4
local HUD_Y = 65
local HUD_FONT_SIZE = 14
local HUD_LINE_HEIGHT = 18
local HUD_OUTLINE = true
local HUD_BACKGROUND = true
local HUD_TEXT_COLOR = '#FFFFFFFF'
local HUD_OUTLINE_COLOR = '#FF000000'
local HUD_BACKGROUND_COLOR = '#D8000000'
local HUD_SURFACE = 'client'

local state_names = {
    [-1] = 'Falling',
    [0]  = 'Standing',
    [1]  = 'Start run',
    [2]  = 'Running',
    [3]  = 'Slowdown',
    [4]  = 'Jump',
    [5]  = 'Turning',
    [6]  = 'Climbing',
    [7]  = 'Ledge hang',
    [8]  = 'Climb finish / Hard landing',
    [9]  = 'Ledge transition',
    [10] = 'Ledge turn',
    [11] = 'Death',
    [12] = 'Drinking potion'
}

local function strip(s)
	return (s:gsub('^%s+', ''):gsub('%s+$', ''))
end

local function hex(s)
	s = strip(s or '')
	if s == '' then return nil end
	s = s:gsub('^0[xX]', '')
	return assert(tonumber(s, 16), 'Invalid hex address: ' .. s)
end

local function decimal(s)
	s = strip(s or '')
	if s == '' then return nil end
	return assert(tonumber(s), 'Invalid decimal value: ' .. s)
end

local segments = {}
local file = assert(io.open(CSV_PATH, 'r'), 'Cannot open ' .. CSV_PATH)
for line in file:lines() do
	line = strip(line)
	if line ~= '' and line:sub(1,1) ~= '#' and not line:match('^start_frame,') then
	local cells = {}
	for cell in (line .. ','):gmatch('(.-),') do
	cells[#cells + 1] = strip(cell)
	end
	local first_frame = assert(decimal(cells[1]), 'Missing start frame')
	segments[#segments + 1] = {
	first = first_frame,
	area = cells[2] or '?',
	e = hex(cells[3]),
	x = hex(cells[4]),
	}
	end
end
file:close()
assert(#segments > 0, 'No address rows in CSV')
table.sort(segments, function(a, b) return a.first < b.first end)

local function segment_at(frame)
	local found = nil
	for _, s in ipairs(segments) do
	if s.first > frame then break end
	found = s
	end
	return found
end

-- b.E is 0x10 bytes after b.ab in this JVM heap field block
local function read_s32(address)
	if not address then return nil end
	local ok, value = pcall(memory.read_s32_le, address, DOMAIN)
	if ok and type(value) == 'number' then return value end
	return nil
end

-- Player-object offsets measured in Levels 1 and 2:
-- animation frame b.am.y = X address + 0x22 (signed short)
-- animation counter b.am.p = X address + 0x28 (signed short)
local function read_s16(address)
	if not address then return nil end
	local ok, value = pcall(memory.read_s16_le, address, DOMAIN)
	if ok and type(value) == 'number' then return value end
	return nil
end

local function sample(frame)
	local s = segment_at(frame)
	local data = {frame=frame, area=s and s.area or 'unmapped', status='unmapped'}
	if not s or not s.e then return data end

	local state = read_s32(s.e)
	local r = read_s32(s.e + 0x04) -- b.R: fall-duration counter
	local dx = read_s32(s.e - 0x10)
	local dy = read_s32(s.e - 0x0C)
	local sx = read_s32(s.e - 0x08)
	local sy = read_s32(s.e - 0x04)
	local x = read_s32(s.x)
	local y = s.x and read_s32(s.x + 0x04) or nil
	local anim_y = s.x and read_s16(s.x + 0x22) or nil
	local anim_p = s.x and read_s16(s.x + 0x28) or nil

	if not state or not dx or not dy or state < -10 or state > 32 or math.abs(dx) > 16384 then
	data.status = 'INVALID'
	return data
	end
	data.status = 'ok'
	data.e, data.dx, data.dy, data.x, data.y = state, dx, dy, x, y
	data.r = r
	data.anim_y, data.anim_p = anim_y, anim_p
	data.spawn_x, data.spawn_y = sx, sy
	return data
end

local function position(value)
	return value and string.format('%.4f', value / 256) or '?'
end

local function integer(value)
	return value ~= nil and tostring(value) or '?'
end

local cache, last_frame = {}, nil

if SHOW_TASTUDIO_COLUMNS and type(tastudio) == 'table'
	and type(tastudio.addcolumn) == 'function'
	and type(tastudio.onqueryitemtext) == 'function' then
	tastudio.addcolumn('PoPE', 'Anim', 32)
	tastudio.addcolumn('PoPR', 'R', 24)
	tastudio.addcolumn('PoPAnimY', 'y', 24)
	tastudio.addcolumn('PoPAnimP', 'p', 24)
	tastudio.addcolumn('PoPX', 'X', 52)
	tastudio.addcolumn('PoPdx', 'dX', 40)
	tastudio.addcolumn('PoPY', 'Y', 52)
	tastudio.addcolumn('PoPdy', 'dY', 40)
	tastudio.onqueryitemtext(function(frame, column)
	local d = cache[frame]
	if not d or d.status ~= 'ok' then return nil end
	if column == 'PoPE' or column == 'PoP E' then
	return tostring(d.e)
	elseif column == 'PoPR' then
	return integer(d.r)
	elseif column == 'PoPX' or column == 'PoP X' then
	return position(d.x)
	elseif column == 'PoPY' or column == 'PoP Y' then
	return position(d.y)
	elseif column == 'PoPdx' or column == 'PoP dx' then
	return position(d.dx)
	elseif column == 'PoPdy' or column == 'PoP dy' then
	return position(d.dy)
	elseif column == 'PoPAnimY' then
	return integer(d.anim_y)
	elseif column == 'PoPAnimP' then
	return integer(d.anim_p)
	end
	return nil
	end)
else
	print('TAStudio custom columns unavailable; HUD only')
end

while true do
	local frame = emu.framecount()
	if last_frame and frame < last_frame then
	for f in pairs(cache) do
	if f >= frame then cache[f] = nil end
	end
	end
	last_frame = frame
	local d = sample(frame)
	cache[frame] = d

	if SHOW_HUD then
		local lines = { string.format('%s', d.area) }
		if d.status == 'ok' then
			lines[#lines + 1] = string.format('E: %d (%s)', d.e, state_names[d.e] or '?')
			lines[#lines + 1] = 'R (fall counter): ' .. integer(d.r)
			lines[#lines + 1] = 'X: ' .. position(d.x) .. '  Y: ' .. position(d.y)
			lines[#lines + 1] = 'dX: ' .. position(d.dx) .. '  dY: ' .. position(d.dy)
			lines[#lines + 1] = 'Anim y: ' .. integer(d.anim_y) .. '  p: ' .. integer(d.anim_p)
		else
			lines[#lines + 1] = d.status
		end

		if HUD_BACKGROUND then
			local max_chars = 0
			for _, line in ipairs(lines) do
				if #line > max_chars then max_chars = #line end
			end
			local panel_width = math.ceil(max_chars * HUD_FONT_SIZE * 0.65) + 12
			local panel_height = #lines * HUD_LINE_HEIGHT + 6
			gui.drawRectangle(HUD_X - 3, HUD_Y - 3,
				panel_width, panel_height,
				HUD_OUTLINE_COLOR, HUD_BACKGROUND_COLOR, HUD_SURFACE)
		end

		local outline_color = HUD_OUTLINE and HUD_OUTLINE_COLOR or '#00000000'
		for i, line in ipairs(lines) do
			gui.drawText(HUD_X, HUD_Y + (i - 1) * HUD_LINE_HEIGHT,
				line, HUD_TEXT_COLOR, outline_color, HUD_FONT_SIZE,
				nil, nil, 'left', 'top', HUD_SURFACE)
		end
	end
	emu.frameadvance()
end