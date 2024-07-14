// c07ex06.rs

use std::io::{self, Write};

fn fatorial(n: i32) -> i32 {
  let mut fat: i32 = 1;
  for i in 1..=n {
    fat *= i;
  }
  return fat
}

fn main() {
  let limite: i32;

  print!("Qual fatorial: ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut entra_lim = String::new();
  io::stdin().read_line(&mut entra_lim).expect("Falha ao ler a entrada");
  limite = entra_lim.trim().parse().expect("Entrada inválida");

  println!("Fatorial = {}", fatorial(limite));

  println!();
  print!("Tecle <Enter> para encerrar... ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut _entrada = String::new();
  io::stdin().read_line(&mut _entrada).expect("Falha ao ler a entrada");
}
