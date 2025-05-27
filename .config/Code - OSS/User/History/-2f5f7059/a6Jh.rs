use macroquad::prelude::*;

#[macroquad::main("BasicShapes")]
async fn main() {
    loop {
        draw_circle(50, 50, 20, BLUE);
        next_frame().await
    }
}