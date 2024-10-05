const rl = @import("raylib");

pub fn main() anyerror!void {
    const screen_width = 1600;
    const screen_height = 900;

    rl.initWindow(screen_width, screen_height, "Ludum Dare 56 - Immune Defense");
    defer rl.closeWindow();

    rl.setTargetFPS(60);
    while (!rl.windowShouldClose()) {
        rl.beginDrawing();
        defer rl.endDrawing();

        rl.clearBackground(rl.Color.black);

        rl.drawText("Hello Ludum Dare 56", 190, 200, 20, rl.Color.light_gray);
    }
}
