local prevX, prevY, prevFrame

while true do
    local x = game.get("_root.crash._x")
    local y = game.get("_root.crash._y")
    local speed = game.get("_root.crash.speed")
    local grav = game.get("_root.crash.grav")
    local accel = game.get("_root.crash.accel")
    local maxspeed = game.get("_root.crash.maxspeed")

    if type(x) == "number" and type(y) == "number" then
        gui.text(10, 90, string.format(
            "X: %.2f  Y: %.2f", x / 20, y / 20
        ))
    else
        gui.text(10, 90, "Crash position unavailable")
    end

    gui.text(10, 108, string.format(
        "Speed: %s  Grav: %s",
        tostring(speed), tostring(grav)
    ))

    gui.text(10, 126, string.format(
        "Accel: %s  MaxSpeed: %s",
        tostring(accel), tostring(maxspeed)
    ))


local frame = emu.framecount()

if type(x) == "number" and type(y) == "number" then
    if prevFrame == frame - 1 then
        gui.text(10, 144, string.format(
            "dX: %+.2f  dY: %+.2f px/frame",
            (x - prevX) / 20,
            (y - prevY) / 20
        ))
    end

    prevX, prevY = x, y
    prevFrame = frame
else
    prevFrame = nil
end

gui.text(10, 162, string.format(
    "Sliding: %s  Lag: %s",
    tostring(game.get("_root.crash.sliding")),
    tostring(game.get("_root.crash.lag"))
))

    emu.frameadvance()
end
