// c04ex02.rs

use std::io::{self, Write};

fn main() {
  let mut a: i32;
  let mut b: i32;
  let x: i32;

  print!("Entre o 1o. valor numerico: ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut entra_a = String::new();
  io::stdin().read_line(&mut entra_a).expect("Falha ao ler a entrada");
  a = entra_a.trim().parse().expect("Entrada invalida");

  print!("Entre o 2o. valor numerico: ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut entra_b = String::new();
  io::stdin().read_line(&mut entra_b).expect("Falha ao ler a entrada");
  b = entra_b.trim().parse().expect("Entrada invalida");

  if a > b {
    x = a;
    a = b;
    b = x;
  }

  println!("Os valores sao: {} e {}.", a, b);

  println!();
  print!("Tecle <Enter> para encerrar... ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut _entrada = String::new();
  io::stdin().read_line(&mut _entrada).expect("Falha ao ler a entrada");
}
