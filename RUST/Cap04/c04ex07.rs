// c04ex07.rs

use std::io::{self, Write};

fn main() {
  let numero: i32;

  print!("Entre um numero inteiro: ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut entra_n = String::new();
  io::stdin().read_line(&mut entra_n).expect("Falha ao ler a entrada");
  numero = entra_n.trim().parse().expect("Entrada invalida");  

  if (numero >= 20) && (numero <= 90) {
    println!("O numero esta na faixa de 20 a 90.");
  } else {
    println!("O numero esta fora da faixa de 20 a 90.");
  }

  print!("\nTecle <Enter> para encerrar... ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut _entra = String::new();
  io::stdin().read_line(&mut _entra).expect("Falha ao ler a entrada");
}
