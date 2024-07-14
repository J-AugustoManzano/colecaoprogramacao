// c04ex05.rs

use std::io::{self, Write};

fn main() {
  let mes: i32;

  print!("Entre com um numero equivalente a um mes: ");
  io::stdout().flush().unwrap();
  let mut entra = String::new();
  io::stdin().read_line(&mut entra).expect("Falha ao ler a entrada");

  mes = entra.trim().parse().expect("Entrada inválida");

  match mes {
     1 => println!("Janeiro"),
     2 => println!("Fevereiro"),
     3 => println!("Marco"),
     4 => println!("Abril"),
     5 => println!("Maio"),
     6 => println!("Junho"),
     7 => println!("Julho"),
     8 => println!("Agosto"),
     9 => println!("Setembro"),
    10 => println!("Outubro"),
    11 => println!("Novembro"),
    12 => println!("Dezembro"),
     _ => println!("Mes invalido"),
  }

  println!();
  print!("Tecle <Enter> para encerrar... ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut _entra = String::new();
  io::stdin().read_line(&mut _entra).expect("Falha ao ler a entrada");
}
