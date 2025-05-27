use macroquad::prelude::*;

#[macroquad::main("BasicShapes")]
async fn main() {
    loop {
        draw_circle(310.00, 150.00, 20.00, BLUE);
        draw_line(0.00,600.00,800.00,600.00,40.00,RED);
        next_frame().await
    }
}