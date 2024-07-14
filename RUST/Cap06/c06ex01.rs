// c06ex01.rs

use std::io::{self, Write};

fn main() {
  let mut md: [f32; 8] = [0.0; 8];
  let mut soma: f32 = 0.0;
  let media: f32;

  for i in 0..=7 {
    print!("Entre a nota {}: ", i + 1);
    io::stdout().flush().unwrap();
    let mut input = String::new();
    io::stdin().read_line(&mut input).unwrap();
    md[i] = input.trim().parse().unwrap();
    soma += md[i];
  }

  media = soma / 8.0;

  println!();
  println!("Resultado da media = {:>5.2}", media);

  println!();
  print!("Tecle <Enter> para encerrar... ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut _entrada = String::new();
  io::stdin().read_line(&mut _entrada).expect("Falha ao ler a entrada");
}


