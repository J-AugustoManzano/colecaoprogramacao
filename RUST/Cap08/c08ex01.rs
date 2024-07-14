// c08ex01.rs

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

fn valida_inteiro(entra: &str) -> bool {
  entra.parse::<i32>().is_ok()
}

fn main() {
  loop {
    print!("Entre um valor numerico inteiro: ");
    io::stdout().flush().expect("Falha ao limpar o buffer");

    let mut numero = String::new();
    io::stdin().read_line(&mut numero).expect("Falha ao ler a entrada");
    numero = numero.trim().to_string();

    println!();

    if numero.is_empty() {
      println!("Erro: Tecla <Enter> acionada acidentalmente.\n");
    } else if caractere_especial(&numero) {
      println!("Erro: Caractere especial nao permitido.\n");
    } else if valida_inteiro(&numero) {
      println!("Entrada valida fornecida: {}\n", numero);
      break;
    } else {
      println!("Erro: Entre um numero inteiro.\n");
    }
  }

  println!();
  print!("Tecle <Enter> para encerrar... ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut _entrada = String::new();
  io::stdin().read_line(&mut _entrada).expect("Falha ao ler a entrada");
}
