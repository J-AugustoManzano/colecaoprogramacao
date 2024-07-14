// c04ex09.rs

use std::io::{self, Write};

fn main() {
  println!("Classificacao esportiva");
  println!();
  println!("Entre '1' se atleta pontuou na 1a. prova");
  println!("Entre '1' se atleta pontuou na 2a. prova");
  println!("Qualquer outro valor se nao pontuou nas provas");
  println!();

  print!("Prova 1: ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut p1 = String::new();
  io::stdin().read_line(&mut p1).expect("Falha ao ler a entrada");
  let p1: i32 = p1.trim().parse().expect("Entrada invalida");

  print!("Prova 2: ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut p2 = String::new();
  io::stdin().read_line(&mut p2).expect("Falha ao ler a entrada");
  let p2: i32 = p2.trim().parse().expect("Entrada invalida");

  if (p1 == 1) ^ (p2 == 1) {
    println!("Atleta participa da terceira prova.");
  } else {
    println!("Atleta nao participa da terceira prova.");
    if (p1 == 1) && (p2 == 1) {
      println!("Classificado para a final.");
    } else {
      println!("Desclassificado da competicao.");
    }
  }

  println!();
  print!("Tecle <Enter> para encerrar... ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut _entra = String::new();
  io::stdin().read_line(&mut _entra).expect("Falha ao ler a entrada");
}
