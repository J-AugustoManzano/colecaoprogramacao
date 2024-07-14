// c04ex10.rs

use std::io::{self, Write};

fn main() {
  let a: i32;
  let b: i32;
  let x: i32;
  let c: i32;

  print!("Entre valor para a variavel <A>: ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut entra = String::new();
  io::stdin().read_line(&mut entra).expect("Falha ao ler a entrada");
  a = entra.trim().parse().expect("Entrada inválida");

  print!("Entre valor para a variavel <B>: ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  entra.clear();
  io::stdin().read_line(&mut entra).expect("Falha ao ler a entrada");
  b = entra.trim().parse().expect("Entrada inválida");

  print!("Entre valor para a variavel <X>: ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  entra.clear();
  io::stdin().read_line(&mut entra).expect("Falha ao ler a entrada");
  x = entra.trim().parse().expect("Entrada inválida");

  if !(x > 5) {
    c = a + b;
  } else {
    c = a - b;
  }

  println!();
  println!("Resultado = {}", c);

  println!();
  print!("Tecle <Enter> para encerrar... ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut _entra = String::new();
  io::stdin().read_line(&mut _entra).expect("Falha ao ler a entrada");
}
