use std::error::Error;
use crossterm::cursor::Hide;
use crossterm::cursor::Show;
use rusty_audio::Audio;
use crossterm::{terminal, ExecutableCommand};
use crossterm::terminal::{EnterAlternateScreen, LeaveAlternateScreen};
use std::io;


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
    terminal::enable_raw_mode()?
    ;
    stdout.execute(EnterAlternateScreen); //spawna il terminale (lo schermo alternativo)
    stdout.execute(Hide); //Nasconde il cursore

    'gameloop: loop{

    }

    audio.wait();
    stdout.execute(Show)?;
    stdout.execute(LeaveAlternateScreen)?;
    terminal::disable_raw_mode();
    Ok(())
}