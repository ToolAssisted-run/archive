-- Memory Addresses
local ADDR_X     = 0x008DA54C  -- User RAM AA2C
local ADDR_Y     = 0x008DA550  -- User RAM
local ADDR_Z     = 0x008DA554  -- User RAM
local ADDR_ANGLE = 0x0040FAC6  -- System / Default RAM (1 byte, unsigned)

-- Set domain explicitly to User RAM for position coordinates
memory.usememorydomain("User RAM")

-- State variables
local prev_x = memory.read_u32_le(ADDR_X)
local prev_y = memory.read_u32_le(ADDR_Y)
local prev_z = memory.read_u32_le(ADDR_Z)

local vel_x = 0
local vel_y = 0
local vel_z = 0
local vel_xy = 0

local static_frames = 0
local MAX_STATIC_FRAMES = 10

-- Angle scale factor (360 / 255 ≈ 1.4117647)
local ANGLE_SCALE = 360 / 255

while true do
    -- Read current positions from User RAM
    memory.usememorydomain("User RAM")
    local curr_x = memory.read_u32_le(ADDR_X)
    local curr_y = memory.read_u32_le(ADDR_Y)
    local curr_z = memory.read_u32_le(ADDR_Z)

    -- Check if any coordinate has changed
    if curr_x ~= prev_x or curr_y ~= prev_y or curr_z ~= prev_z then
        -- Calculate individual axis displacement
        vel_x = curr_x - prev_x
        vel_y = curr_y - prev_y
        vel_z = curr_z - prev_z

        -- Calculate combined 2D (X+Y) velocity magnitude
        vel_xy = math.sqrt((vel_x ^ 2) + (vel_y ^ 2))

        -- Reset static frame counter & update previous positions
        static_frames = 0
        prev_x = curr_x
        prev_y = curr_y
        prev_z = curr_z
    else
        -- Increment frame counter if position hasn't moved
        static_frames = static_frames + 1
        if static_frames >= MAX_STATIC_FRAMES then
            vel_x = 0
            vel_y = 0
            vel_z = 0
            vel_xy = 0
        end
    end

    -- Read 1-byte angle (switches domain or uses main memory if outside User RAM)
    local raw_angle = memory.readbyte(ADDR_ANGLE)
    local angle_deg = raw_angle * ANGLE_SCALE

    -- Render On-Screen Display (OSD shifted down by 2 pixels: Y = 12, 27, 42, 57, 72)
    gui.text(10, 12, string.format("Vel X:  %+d", vel_x))
    gui.text(10, 27, string.format("Vel Y:  %+d", vel_y))
    gui.text(10, 42, string.format("Vel Z:  %+d", vel_z))
    gui.text(10, 57, string.format("Vel XY: %.2f", vel_xy))
    gui.text(10, 72, string.format("Angle:  %.1f", angle_deg, raw_angle))

    -- Advance to next frame
    emu.frameadvance()
end