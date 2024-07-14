// c04ex08.rs

use std::io::{self, Write};

fn main() {
  let transp: char;

  println!("Escolha o tipo de transporte:");
  println!();
  println!("[M] - Motocicleta");
  println!("[S] - Scooter");
  println!();

  print!("==> ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut entra_t = String::new();
  io::stdin().read_line(&mut entra_t).expect("Falha ao ler a entrada");
  transp = entra_t.trim()
    .chars()
    .next()
    .unwrap_or(' ')
    .to_ascii_uppercase();

  if (transp == 'M') || (transp == 'S') {
    println!("Transporte valido.");
  } else {
    println!("Transporte invalido.");
  }

  println!();
  print!("Tecle <Enter> para encerrar... ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut _entra = String::new();
  io::stdin().read_line(&mut _entra).expect("Falha ao ler a entrada");
}
