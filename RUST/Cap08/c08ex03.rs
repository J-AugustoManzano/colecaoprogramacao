// c08ex03.rs

use std::io::{self, Write};

fn main() {
  println!("CLASSIFICACAO DE NUMEROS (CRESCENTE)\n");

  let mut numeros: Vec<i32> = Vec::with_capacity(5);

  for i in 0..=4 {
    print!("Entre o {}o. numero: ", i + 1);
    io::stdout().flush().expect("Falha ao limpar o buffer");

    let mut entra_n = String::new();
    io::stdin().read_line(&mut entra_n).expect("Falha ao ler a entrada");
    let numero: i32 = entra_n.trim().parse().expect("Entrada inválida");
    numeros.push(numero);
  }

  for i in 0..=3 {
    for j in (i + 1)..=4 {
      if numeros[i] > numeros[j] {
        let x = numeros[i];
        numeros[i] = numeros[j];
        numeros[j] = x;
      }
    }
  }

  println!();
  for i in 0..=4 {
    println!("{}o. numero: {}", i + 1, numeros[i]);
  }

  println!();
  print!("Pressione <Enter> para encerrar... ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut _entrada = String::new();
  io::stdin().read_line(&mut _entrada).expect("Falha ao ler a entrada");
}
