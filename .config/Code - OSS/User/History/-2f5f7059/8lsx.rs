use macroquad::prelude::*;

#[macroquad::main("BasicShapes")]
async fn main() {
    let mut h:f32 = 150.00;
    let flag:bool =false;
    loop {
        draw_circle(310.00, h, 20.00, BLUE);
        draw_line(0.00,600.00,800.00,600.00,40.00,RED);
        h=h+1.00;
        if h > 550.00{
            h= h-1.00;
        }
        next_frame().await
    }
}