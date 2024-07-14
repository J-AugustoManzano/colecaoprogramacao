// c03ex08.rs

use std::io::{self, Write};

/*
Programa exemplo para operações de duas entradas
com cálculo de adição e apresentação de resultado.
*/

fn main() {
  let a: i32;
  let b: i32;
  let x: i32;

  // Entrada de dados
  print!("Entre o 1o. valor numerico inteiro: ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut entra_a = String::new();
  io::stdin().read_line(&mut entra_a).expect("Falha ao ler a en-trada");
  a = entra_a.trim().parse().expect("Entrada invalida");

  print!("Entre o 2o. valor numerico inteiro: ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut entra_b = String::new();
  io::stdin().read_line(&mut entra_b).expect("Falha ao ler a en-trada");
  b = entra_b.trim().parse().expect("Entrada invalida");

  // Processamento de dados
  x = a + b; // Cálculo da adição

  // Saída de dados
  println!("Resultado = {}", x);

  println!();
  print!("Tecle <Enter> para encerrar... ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut _entrada = String::new();
  io::stdin().read_line(&mut _entrada).expect("Falha ao ler a entrada");
}
