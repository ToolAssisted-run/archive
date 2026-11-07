
while true do
    local function get(name)
        return tostring(game.get("_root.roo." .. name))
    end

    gui.text(10, 180, "Roo HP: " .. get("hp"))
    gui.text(10, 198, "Count: " .. get("count"))
    gui.text(10, 216, "Kicker: " .. get("kicker"))
    gui.text(10, 234, "KickNo: " .. get("kickno"))
    gui.text(10, 252, "Platform: " .. get("flr"))
    gui.text(10, 270, "Anim: " .. get("_currentframe"))

    emu.frameadvance()
end
