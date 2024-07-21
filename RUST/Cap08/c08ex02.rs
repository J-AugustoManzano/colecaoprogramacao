// c08ex02.rs

use std::io::{self, Write};

fn caractere_especial(entra: &str) -> bool {
  let caractere_especial = "!@#$%^&*()-_=+[]{}|;:',<>/?`~\"";
  for caractere in caractere_especial.chars() {
    if entra.contains(caractere) {
      return true;
    }
  }
  false
}

fn valida_numero(entra: &str) -> bool {
  entra.parse::<f64>().is_ok()
}

fn main() {
  loop {
    print!("Entre um valor numerico: ");
    io::stdout().flush().expect("Falha ao limpar o buffer");

    let mut numero = String::new();
    io::stdin().read_line(&mut numero).expect("Falha ao ler a entrada");
    numero = numero.trim().to_string();

    if numero.is_empty() {
      println!("\nErro: Tecla <Enter> acionada acidentalmente.\n");
    } else if caractere_especial(&numero) {
      println!("\nErro: Caractere especial nao permitido.\n");
    } else if valida_numero(&numero) {
      println!("\nEntrada valida fornecida: {}\n", numero);
      break;
    } else {
      println!("/nErro: Entre um numero valido.\n");
    }
  }

  println!();
  print!("Pressione <Enter> para encerrar... ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut _entrada = String::new();
  io::stdin().read_line(&mut _entrada).expect("Falha ao ler a entrada");
}
