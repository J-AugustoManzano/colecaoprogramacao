// c05ex09.rs

use std::io::{self, Write};

fn main() {
  let mut i: i32 = 1;

  loop {
    print!("Entre um valor numerico: ");
    io::stdout().flush().expect("Falha ao limpar o buffer");
    let mut entra_n = String::new();
    io::stdin().read_line(&mut entra_n).expect("Falha ao ler a entrada");
    let n: i32 = entra_n.trim().parse().expect("Entrada inválida");

    let r = n * 3;

    println!("Resultado = {}", r);
    println!();

    if i > 4 {break;}
    i += 1;
  }

  println!();
  print!("Tecle <Enter> para encerrar... ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut _entrada = String::new();
  io::stdin().read_line(&mut _entrada).expect("Falha ao ler a entrada");
}
