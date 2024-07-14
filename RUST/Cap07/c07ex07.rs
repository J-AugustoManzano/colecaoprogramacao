// c07ex07.rs

use std::io::{self, Write};

fn igual(a: i32, b: i32) -> bool {
  a == b
}

fn main() {
  let x: i32;
  let y: i32;

  print!("Informe o 1o. valor: ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut entra_x = String::new();
  io::stdin().read_line(&mut entra_x).expect("Falha ao ler a entrada");
  x = entra_x.trim().parse().expect("Entrada inválida");

  print!("Informe o 2o. valor: ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut entra_y = String::new();
  io::stdin().read_line(&mut entra_y).expect("Falha ao ler a entrada");
  y = entra_y.trim().parse().expect("Entrada inválida");

  if igual(x, y) {
    println!("Valores sao iguais");
  } else {
    println!("Valores sao diferentes");
  }

  println!();
  print!("Tecle <Enter> para encerrar... ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut _entrada = String::new();
  io::stdin().read_line(&mut _entrada).expect("Falha ao ler a entrada");
}
