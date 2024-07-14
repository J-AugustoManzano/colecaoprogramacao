// c04ex06.rs

use std::io::{self, Write};

fn main() {
  let a: f64;
  let b: f64;
  let opcao: i8;

  print!("Entre o 1o. valor numerico: ");
  io::stdout().flush().unwrap();
  let mut entra_a = String::new();
  io::stdin().read_line(&mut entra_a).expect("Falha ao ler a entrada");
  a = entra_a.trim().parse().expect("Entrada inválida");

  print!("Entre o 2o. valor numerico: ");
  io::stdout().flush().unwrap();
  let mut entra_b = String::new();
  io::stdin().read_line(&mut entra_b).expect("Falha ao ler a entrada");
  b = entra_b.trim().parse().expect("Entrada inválida");

  println!();
  println!("Escolha uma opcao de menu:");
  println!();
  println!("[1] - Adicao");
  println!("[2] - Subtracao");
  println!("[3] - Multiplicacao");
  println!("[4] - Divisao");
  println!();

  print!("==> ");
  io::stdout().flush().unwrap();
  let mut entra_op = String::new();
  io::stdin().read_line(&mut entra_op).expect("Falha ao ler a entrada");
  opcao = entra_op.trim().parse().expect("Entrada inválida");

  println!();
  match opcao as i8 {
    1 => {
      println!("Calculo de adicao");
      println!("Resultado: {}", a + b);
    },
    2 => {
      println!("Calculo de subtracao");
      println!("Resultado: {}", a - b);
    },
    3 => {
      println!("Calculo de multiplicacao");
      println!("Resultado: {}", a * b);
    },
    4 => {
      println!("Calculo de divisao");
      if b == 0.0 {
        println!("Resultado: ERRO");
      } else {
        println!("Resultado: {}", a / b);
      }
    },
    _ => {
      println!("Entrada invalida");
      println!("Tente novamente em outro momento");
    }
  }

  println!();
  print!("Tecle <Enter> para encerrar... ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut _entra = String::new();
  io::stdin().read_line(&mut _entra).expect("Falha ao ler a entrada");
}
