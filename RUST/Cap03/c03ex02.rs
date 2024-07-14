// c03ex02.rs

use std::f64::consts::PI;
use std::io::{self, Write};

fn main() {
  let r: f64;
  let a: f64;

  print!("Entre valor do raio: ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut entrada = String::new();
  io::stdin().read_line(&mut entrada).expect("Falha ao ler a entrada");
  r = entrada.trim().parse().expect("Entrada inválida");

  a = PI * r.powf(2.0);

  println!("Resultado = {:.2}", a);

  println!();
  print!("Tecle <Enter> para encerrar... ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut _entrada = String::new();
  io::stdin().read_line(&mut _entrada).expect("Falha ao ler a entrada");
}
