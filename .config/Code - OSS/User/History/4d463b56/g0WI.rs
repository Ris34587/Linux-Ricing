use std::error::Error;
use rusty_audio::Audio;



fn main() -> Result<(), Box<dyn Error>> {
    let mut audio = Audio::new();
    audio.add("explode","src/explode.wav");
    audio.add("lose","src/lose.wav");
    audio.add("move","src/move.wav");
    audio.add("pew","src/pew.wav");
    audio.add("startup","src/startup.wav");
    audio.add("win","src/win.wav");
    audio.play("startup");

    audio.wait();
    
    Ok(())
}