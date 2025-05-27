use macroquad::prelude::*;

#[macroquad::main("BasicShapes")]
async fn main() {
    loop {
        draw_circle(150.00, 150.00, 20.00, BLUE);
        next_frame().await
    }
}