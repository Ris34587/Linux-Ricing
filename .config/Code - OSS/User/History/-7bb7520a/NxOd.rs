use std::io;

fn main() {
    let mut parola = String::new();
    io::stdin().read_line(&mut parola);
    println!("{}",parola);
}
