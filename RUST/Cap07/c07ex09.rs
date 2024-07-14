// c07ex09.rs

use std::io::{self, Write};

fn fatorial_base(n: i32, p: i32) -> i32 {
  if n == 0 {
    return p
  } else {
    return fatorial_base(n - 1, n * p)
  }
}

fn fatorial(n: i32) -> i32 {
  fatorial_base(n, 1)
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
