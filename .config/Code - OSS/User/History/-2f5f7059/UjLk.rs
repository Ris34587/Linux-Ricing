use macroquad::prelude::*;


#[macroquad::main("BasicShapes")]
async fn main() {
    let mut h:f32 = 150.00;
    let mut flag:bool =false;
    let GravityAccel:f64 = 3.59;
    let mass:f64 = 51.00;
    let mut Fp:f64 = mass * GravityAccel;
    loop {
        draw_circle(310.00, h, 20.00, BLUE);
        draw_line(0.00,600.00,800.00,600.00,40.00,RED);
        if h > 550.00{
            flag = true;
        }
        if h < 100.00{
            flag = false;
        }
        if flag == false{
            h=h+1.00;
    }
        if flag == true{
            h=h-1.00;
    }
        next_frame().await
    }
}