// c04ex04.rs

use std::io::{self, Write};

fn main() {
  let n1: f64;
  let n2: f64;
  let n3: f64;
  let n4: f64;
  let ne: f64;
  let md1: f64;
  let md2: f64;

  print!("Entre a 1a. nota .......: ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut entrada = String::new();
  io::stdin().read_line(&mut entrada).expect("Falha ao ler a entrada");
  n1 = entrada.trim().parse().expect("Entrada inválida");

  print!("Entre a 2a. nota .......: ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  entrada.clear();
  io::stdin().read_line(&mut entrada).expect("Falha ao ler a entrada");
  n2 = entrada.trim().parse().expect("Entrada inválida");

  print!("Entre a 3a. nota .......: ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  entrada.clear();
  io::stdin().read_line(&mut entrada).expect("Falha ao ler a entrada");
  n3 = entrada.trim().parse().expect("Entrada inválida");

  print!("Entre a 4a. nota .......: ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  entrada.clear();
  io::stdin().read_line(&mut entrada).expect("Falha ao ler a entrada");
  n4 = entrada.trim().parse().expect("Entrada inválida");

  println!();

  md1 = (n1 + n2 + n3 + n4) / 4.0;

  if md1 >= 7.0 {
    println!("Aprovado");
    println!("Media: {:.2}", md1);
  } else {
    print!("Entre a nota de exame ..: ");
    io::stdout().flush().expect("Falha ao limpar o buffer");
    entrada.clear();
    io::stdin().read_line(&mut entrada).expect("Falha ao ler a entrada");
    ne = entrada.trim().parse().expect("Entrada inválida");

    println!();

    md2 = (md1 + ne) / 2.0;

    if md2 >= 5.0 {
      println!("Aprovado em exame");
    } else {
      println!("Reprovado");
    }
    println!("Media: {:.2}", md2);
  }

  println!();
  print!("Tecle <Enter> para encerrar... ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut _entra = String::new();
  io::stdin().read_line(&mut _entra).expect("Falha ao ler a entrada");
}
