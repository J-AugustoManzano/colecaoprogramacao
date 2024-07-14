// c07ex01.rs

use std::io::{self, Write};

fn rotsoma() {
  println!();
  println!("Rotina de Adicao");
  println!();

  print!("Entre o 1o. valor: ");
  io::stdout().flush().unwrap();
  let mut entra = String::new();
  io::stdin().read_line(&mut entra).unwrap();
  let a1: f64 = entra.trim().parse().unwrap();

  print!("Entre o 2o. valor: ");
  io::stdout().flush().unwrap();
  entra.clear();
  io::stdin().read_line(&mut entra).unwrap();
  let b1: f64 = entra.trim().parse().unwrap();

  println!();
  let r1 = a1 + b1;
  println!("O resultado da operacao equivale a: {:.2}", r1);
  println!();
}

fn rotsubtracao() {
  println!();
  println!("Rotina de Subtracao");
  println!();

  print!("Entre o 1o. valor: ");
  io::stdout().flush().unwrap();
  let mut entra = String::new();
  io::stdin().read_line(&mut entra).unwrap();
  let a2: f64 = entra.trim().parse().unwrap();

  print!("Entre o 2o. valor: ");
  io::stdout().flush().unwrap();
  entra.clear();
  io::stdin().read_line(&mut entra).unwrap();
  let b2: f64 = entra.trim().parse().unwrap();

  println!();
  let r2 = a2 - b2;
  println!("O resultado da operacao equivale a: {:.2}", r2);
  println!();
}

fn rotmultiplicacao() {
  println!();
  println!("Rotina de Multiplicacao");
  println!();

  print!("Entre o 1o. valor: ");
  io::stdout().flush().unwrap();
  let mut entra = String::new();
  io::stdin().read_line(&mut entra).unwrap();
  let a3: f64 = entra.trim().parse().unwrap();

  print!("Entre o 2o. valor: ");
  io::stdout().flush().unwrap();
  entra.clear();
  io::stdin().read_line(&mut entra).unwrap();
  let b3: f64 = entra.trim().parse().unwrap();

  println!();
  let r3 = a3 * b3;
  println!("O resultado da operacao equivale a: {:.2}", r3);
  println!();
}

fn rotdivisao() {
  println!();
  println!("Rotina de Divisao");
  println!();

  print!("Entre o 1o. valor: ");
  io::stdout().flush().unwrap();
  let mut entra = String::new();
  io::stdin().read_line(&mut entra).unwrap();
  let a4: f64 = entra.trim().parse().unwrap();

  print!("Entre o 2o. valor: ");
  io::stdout().flush().unwrap();
  entra.clear();
  io::stdin().read_line(&mut entra).unwrap();
  let b4: f64 = entra.trim().parse().unwrap();

  println!();
  if b4 == 0.0 {
    println!("O resultado da operacao equivale a: ERRO");
  } else {
    let r4 = a4 / b4;
    println!("O resultado da operacao equivale a: {:.2}", r4);
  }
  println!();
}

fn main() {
  let mut opcao: i32;

  loop {
    println!("CALCULADORA - V1");
    println!();
    println!("[1] - Adicao");
    println!("[2] - Subtracao");
    println!("[3] - Multiplicacao");
    println!("[4] - Divisao");
    println!("[5] - Fim de Programa");
    println!();
    print!("Escolha uma opcao: ");
    io::stdout().flush().unwrap();

    let mut entra_op = String::new();
    io::stdin().read_line(&mut entra_op).unwrap();
    opcao = entra_op.trim().parse().unwrap_or(0);

    if opcao != 5 {
      match opcao {
        1 => rotsoma(),
        2 => rotsubtracao(),
        3 => rotmultiplicacao(),
        4 => rotdivisao(),
        _ => {
          println!();
          println!("Opcao invalida - Tente novamente");
          println!();
        }
      }
    } else {
      break;
    }
  }
}
