use std::io;
use std::error::Error;
use std::time::Duration;
use crossterm::cursor::Hide;
use crossterm::cursor::Show;
use crossterm::event::Event;
use crossterm::event::KeyCode;
use crossterm::event;
use crossterm::{terminal, ExecutableCommand};
use crossterm::terminal::{EnterAlternateScreen, LeaveAlternateScreen};
use rusty_audio::Audio;


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
        while event::poll(Duration::default())?{
            if let Event::Key(key_event) = event::read()?{
                match key_event.code{
                    KeyCode::Esc | KeyCode::Char('q') =>{
                        audio.play("move");
                        break 'gameloop;
                    }
                    _ => {}
                }
            }
        }
    }

    audio.wait();
    stdout.execute(Show)?;
    stdout.execute(LeaveAlternateScreen)?;
    terminal::disable_raw_mode();
    Ok(())
}