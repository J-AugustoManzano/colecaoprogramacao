// c08ex04.rs

use std::io::{self, Write};

fn main() {
  println!("CLASSIFICACAO DE NOMES (DECRESCENTE)\n");

  let mut nomes: Vec<String> = Vec::with_capacity(5);

  for i in 0..=4 {
    print!("Entre o {}o. nome: ", i + 1);
    io::stdout().flush().expect("Falha ao limpar o buffer");

    let mut entra_nome = String::new();
    io::stdin().read_line(&mut entra_nome)
      .expect("Falha ao ler a entrada");
    nomes.push(entra_nome.trim().to_string());
  }

  for i in 0..=3 {
    for j in (i+1)..=4 {
      if nomes[i] < nomes[j] {
        let x = nomes[i].clone();
        nomes[i] = nomes[j].clone();
        nomes[j] = x;
      }
    }
  }

  println!();
  for i in 0..=4 {
    println!("{}o. nome: {}", i + 1, nomes[i]);
  }

  println!();
  print!("Pressione <Enter> para encerrar... ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut _entrada = String::new();
  io::stdin().read_line(&mut _entrada).expect("Falha ao ler a entrada");
}
