// c03ex05.rs

use std::io::{self, Write};

fn main() {
  let nome: String;

  print!("Entre seu nome: ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut entrada = String::new(); 
  io::stdin().read_line(&mut entrada).expect("Falha ao ler a entrada");
  nome = entrada.trim().to_string();

  println!("Ola, {}! Bem-vindo ao estudo de Rust.", nome);

  println!();
  print!("Tecle <Enter> para encerrar... ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut _entrada = String::new();
  io::stdin().read_line(&mut _entrada).expect("Falha ao ler a entrada");
}
