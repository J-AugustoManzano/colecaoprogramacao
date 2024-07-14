// c03ex07.rs

use std::io::{self, Write};

fn main() {
  let frase = "Aprendendo Rust com o Professor Manzano";
  let palavras: Vec<&str> = frase.split_whitespace().collect();

  println!("Frase ......: {}", frase);
  println!("              {}", "-".repeat(40));
  println!("              0000000001111111111222222222233333333333");
  println!("              0123456789012345678901234567890123456789");

  println!();
  println!("Tamanho ...: {} caracteres", frase.len());

  println!();
  println!("Palavra 1 ............: {}", palavras[0]);
  println!("Palavra 2 ............: {}", palavras[1]);
  println!("Palavra 3 ............: {}", palavras[2]);
  println!("Palavra 4 ............: {}", palavras[3]);

  println!();
  print!("Letra 1 da Palavra 1 .: ");
  println!("{}", palavras[0].chars().next().unwrap());
  print!("Letra 2 da Palavra 1 .: ");
  println!("{}", palavras[0].chars().nth(1).unwrap());
  print!("Letra 3 da Palavra 1 .: ");
  println!("{}", palavras[0].chars().nth(2).unwrap());
  print!("Letra 4 da Palavra 1 .: ");
  println!("{}", palavras[0].chars().nth(3).unwrap());

  println!();
  print!("A palavra 'Rust' na posicao: ");
  println!("{}", frase.find("Rust").map(|i| i + 1).unwrap_or(0));

  println!();
  print!("Tecle <Enter> para encerrar... ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut _entrada = String::new();
  io::stdin().read_line(&mut _entrada).expect("Falha ao ler a entrada");
}
