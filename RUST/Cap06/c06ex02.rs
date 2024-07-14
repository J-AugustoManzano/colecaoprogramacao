// c06ex02.rs

use std::io::{self, Write};

fn main() {
  let mut notas: [[f64; 4]; 8] = [[0.0; 4]; 8];

  for i in 0..=7 {
    println!("Entre as notas do aluno {}:", i + 1);
    for j in 0..=3 {
      print!("Nota {}: ", j + 1);
    io::stdout().flush().unwrap();
      let mut nt = String::new();
      std::io::stdin()
        .read_line(&mut nt)
        .expect("Falha ao ler a entrada");
      notas[i][j] = nt.trim().parse().expect("Entrada inválida");
    }
    println!();
  }

  println!();
  println!("RELATORIO DE NOTAS");
  println!();
  println!("Aluno Nota1 Nota2 Nota3 Nota4");
  println!("----- ----- ----- ----- -----");
  for i in 0..=7 {
    print!("{:5}", i + 1);
    for j in 0..=3 {
      print!(" {:5.1}", notas[i][j]);
    }
    println!();
  }

  println!();
  print!("Tecle <Enter> para encerrar... ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut _entrada = String::new();
  io::stdin().read_line(&mut _entrada).expect("Falha ao ler a entrada");
}


