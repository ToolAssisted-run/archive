
local positions = {}
local displacements = {}
local speeds = {}
local positionsY = {}
local displacementsY = {}
local gravs = {}
local lags = {}
local slidings = {}
local animFrames = {}

tastudio.addcolumn("CrashX", "CrashX", 50)
tastudio.addcolumn("dX", "dX", 45)
-- tastudio.addcolumn("Speed", "Speed", 50)
tastudio.addcolumn("CrashY", "CrashY", 45)
tastudio.addcolumn("dY", "dY", 40)
-- tastudio.addcolumn("Grav", "Grav", 40)
tastudio.addcolumn("Lag", "Lag", 35)
tastudio.addcolumn("Slide", "Slide", 40)
tastudio.addcolumn("Anim", "Anim", 40)

tastudio.onqueryitemtext(function(frame, column)
	local value
	if column == "CrashX" then
		value = positions[frame]
	elseif column == "dX" then
		value = displacements[frame]
--	elseif column == "Speed" then
--		value = speeds[frame]
	elseif column == "CrashY" then
		value = positionsY[frame]
	elseif column == "dY" then
		value = displacementsY[frame]
--	elseif column == "Grav" then
--		value = gravs[frame]
	elseif column == "Lag" then
		value = lags[frame]
	elseif column == "Slide" then
		value = slidings[frame]
	elseif column == "Anim" then
		value = animFrames[frame]
	else
		return nil
	end


	if column == "Slide" then
		if value == nil then return "" end
		return (value == true or
			(type(value) == "number" and value ~= 0))
			and "Y" or "N"
	end

	if type(value) == "number" then
		if column == "Lag" or column == "Anim" then
			return string.format("%.0f", value)
		end
		return string.format("%.2f", value)
	end

	return ""
end)

-- record
event.onframeend(function()
	local frame = emu.framecount()

	local x = game.get("_root.crash._x")
	local y = game.get("_root.crash._y")
	local speed = game.get("_root.crash.speed")
	local grav = game.get("_root.crash.grav")
	local lag = game.get("_root.crash.lag")
	local sliding = game.get("_root.crash.sliding")
	local anim = game.get("_root.crash._currentframe")

	lags[frame] = type(lag) == "number" and lag or nil
	slidings[frame] = sliding
	animFrames[frame] = type(anim) == "number" and anim or nil

	if type(x) ~= "number" then
		positions[frame] = nil
		displacements[frame] = nil
	else
		-- convert twips to pixels
		x = x / 20

		-- actual displacement calc
		local prevX = positions[frame - 1]

		if type(prevX) == "number" then
			displacements[frame] = x - prevX
		else
			displacements[frame] = nil
		end

		positions[frame] = x
	end

	if type(y) ~= "number" then
		positionsY[frame] = nil
		displacementsY[frame] = nil
	else
		-- convert twips to pixels
		y = y / 20

		-- actual displacement calc
		local prevY = positionsY[frame - 1]

		if type(prevY) == "number" then
			displacementsY[frame] = y - prevY
		else
			displacementsY[frame] = nil
		end

		positionsY[frame] = y
	end

	if type(speed) == "number" then
		speeds[frame] = speed
	else
		speeds[frame] = nil
	end

	if type(grav) == "number" then
		gravs[frame] = grav
	else
		gravs[frame] = nil
	end

return ""

end)

print("Crash TAStudio logger initialized")

while true do
	emu.frameadvance()
end
