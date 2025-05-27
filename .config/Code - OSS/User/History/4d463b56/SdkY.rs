use std::error::Error;
use rusty_audio::Audio;
use crossterm::{terminal, ExecutableCommand};
use crossterm::terminal::EnterAlternateScreen;


fn main() -> Result<(), Box<dyn Error>> {
    let mut audio = Audio::new();
    audio.add("explode","audio/explode.wav");
    audio.add("lose","audio/lose.wav");
    audio.add("move","audio/move.wav");
    audio.add("pew","audio/pew.wav");
    audio.add("startup","audio/startup.wav");
    audio.add("win","audio/win.wav");
    audio.play("startup");

    let mut stdout = io::stdout();
    terminal::enable_raw_mode()?;
    stdout.execute();

    audio.wait();
    
    Ok(())
}