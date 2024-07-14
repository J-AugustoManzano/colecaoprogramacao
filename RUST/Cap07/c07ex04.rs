// c07ex04.rs

use std::io::{self, Write};

fn fatorial(n: i32) {
  let mut fat: i32 = 1;
  for i in 1..=n {
    fat *= i;
  }
  println!("Fatorial = {}", fat);
}

fn main() {
  let limite:i32;

  print!("Qual fatorial: ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut entra_lim = String::new();
  io::stdin().read_line(&mut entra_lim).expect("Falha ao ler a en-trada");
  limite = entra_lim.trim().parse().expect("Entrada invalida");	

  fatorial(limite);

  println!();
  print!("Tecle <Enter> para encerrar... ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut _entrada = String::new();
  io::stdin().read_line(&mut _entrada).expect("Falha ao ler a entrada");
}
