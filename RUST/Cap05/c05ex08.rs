// c05ex08.rs

use std::io::{self, Write};

fn main() {
  let mut resp = String::from("S");

  loop {
    print!("Entre um valor numerico: ");
    io::stdout().flush().expect("Falha ao limpar o buffer");
    let mut entra_n = String::new();
    io::stdin().read_line(&mut entra_n).expect("Falha ao ler a entrada");
    let n: i32 = entra_n.trim().parse().expect("Entrada inválida");

    let r = n * 3;

    println!("Resultado = {}", r);
    println!();

    print!("Deseja continuar? (S/N): ");
    io::stdout().flush().expect("Falha ao limpar o buffer");
    resp.clear();
    io::stdin().read_line(&mut resp).expect("Falha ao ler a entrada");
    resp = resp.trim().to_string().to_uppercase();
    println!();
    
    if !(resp == "S") {break;}
  }

  println!();
  print!("Tecle <Enter> para encerrar... ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut _entrada = String::new();
  io::stdin().read_line(&mut _entrada).expect("Falha ao ler a entrada");
}
