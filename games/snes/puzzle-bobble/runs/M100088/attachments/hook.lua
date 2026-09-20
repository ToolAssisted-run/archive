direction_addr = 0x7e08ba
cur_ball_addr = 0x7e0862
next_ball_addr = 0x7e086e
rng_addr = 0x7e0332
mask_addr = 0x7e08ae
shot_confirmation_addr = 0x7E0852

fetch_rng_for_ball_addr = 0x80dc0a

color = {
    'black',
    'red',
    'yellow',
    'green',
    'purple',
    'orange',
    'blue',
    'white'
}

pos = {}

function bit_count(x)
    local ans = 0
    while x > 0 do
        ans = ans + 1
        x = x - AND(x,-x)
    end
    return ans
end

function next_seed(seed)
    return AND(5*seed+1, 0xFFFF)
end

function prev_seed(seed)
    return AND(52429*(seed-1), 0xFFFF)
end

function setup_pos()
    local x = 0
    local p = 0
    while (pos[x] == nil) do
        pos[x] = p
        x = next_seed(x)
        p = p + 1
    end
end

function get_ball(seed, mask)
    local num = bit_count(mask)
    local val = SHIFT(seed, 1)
    val = AND(OR(SHIFT(val,8),SHIFT(val,-8)),0xFFFF)
    val = SHIFT(XOR(val, seed), 2)
    local pick = val % num
    local aux = 0
    for i=8,1,-1 do
        if AND(mask, SHIFT(1,i-8)) > 0 then
            if aux == pick then
                return i
            else
                aux = aux + 1
            end
        end
    end
end

function log_seed()
    local frame = emu.framecount()
    local seed = memory.readword(rng_addr)
    local mask = memory.readbyte(mask_addr)
    print(string.format("frame %d - seed: %d, pos: %d, mask: %d -> %s", frame, seed, pos[seed], mask, color[get_ball(seed, mask)]))
end

function log_shot()
    local shooting = memory.readbyte(shot_confirmation_addr)
    if shooting == 1 then
        local frame = emu.framecount()
        local angle = memory.readbyte(direction_addr)
        local ball = memory.readbyte(cur_ball_addr)
        print(string.format("frame %d - shot %s at angle %d", frame, color[ball], angle))
    end
end

function draw_info()
    local angle = memory.readbyte(direction_addr)
    local mask = memory.readbyte(mask_addr)
    local seed = memory.readword(rng_addr)
    local p = pos[seed]
    local mask_binary = ''
    local check = 128
    while check > 0 do
        if AND(mask, check) > 0 then
            mask_binary = mask_binary .. '1'
        else
            mask_binary = mask_binary .. '0'
        end
        check = SHIFT(check, 1)
    end
    gui.text(10, 40, string.format('Angle: %d\nMask: %s\nSeed: %d\nPos: %d', angle, mask_binary, seed, p))
end

setup_pos()
memory.registerexec(fetch_rng_for_ball_addr, log_seed)
memory.registerwrite(shot_confirmation_addr, log_shot)
gui.register(draw_info)
