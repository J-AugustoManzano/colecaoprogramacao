// c03ex04.rs

use std::io::{self, Write};

fn main() {
  let ht: f64;
  let vh: f64;
  let pd: f64;
  let sb: f64;
  let td: f64;
  let sl: f64;

  print!("Entre quantidade de horas trabalhadas ..: ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut entrada = String::new();
  io::stdin().read_line(&mut entrada).expect("Falha ao ler a entrada");
  ht = entrada.trim().parse().expect("Entrada inválida");

  print!("Entre valor do salario-hora ............: ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  entrada = String::new();
  io::stdin().read_line(&mut entrada).expect("Falha ao ler a entrada");
  vh = entrada.trim().parse().expect("Entrada inválida");

  print!("Entre valor do percentual de desconto ..: ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  entrada = String::new();
  io::stdin().read_line(&mut entrada).expect("Falha ao ler a entrada");
  pd = entrada.trim().parse().expect("Entrada inválida");

  sb = ht * vh;
  td = (pd / 100.0) * sb;
  sl = sb - td;

  println!();
  println!("Salario Bruto ....: {:8.2}", sb);
  println!("Salario Liquido ..: {:8.2}", sl);

  println!();
  print!("Tecle <Enter> para encerrar... ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut _entrada = String::new();
  io::stdin().read_line(&mut _entrada).expect("Falha ao ler a entrada");
}
