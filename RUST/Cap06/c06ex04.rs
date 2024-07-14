// c06ex04.rs

use std::io::{self, Write};

fn main() {
  let mut a: Vec<String> = Vec::new();
  let n: usize;

  print!("Entre a quantidade de elementos da matriz: ");
  io::stdout().flush().unwrap();
  let mut entra_n = String::new();
  io::stdin().read_line(&mut entra_n).unwrap();
  n = entra_n.trim().parse().unwrap();

  println!();

  for i in 0..n {
    print!("Entre o {}o. nome: ", i + 1);
    io::stdout().flush().unwrap();
    let mut nome = String::new();
    io::stdin().read_line(&mut nome).unwrap();
    a.push(nome.trim().to_string());
  }

  println!();
  println!("Foram fornecidos os nomes:");
  println!();

  for i in 0..n {
    println!("Nome {} = {}", i + 1, a[i]);
  }

  println!();
  print!("Tecle <Enter> para encerrar... ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut _entrada = String::new();
  io::stdin().read_line(&mut _entrada).expect("Falha ao ler a entrada");
}
