// c03ex06.rs

use std::io::{self, Write};

fn main() {
  let palavra = "COMPUTADOR";

  println!("Palavra ........: {}", palavra);
  println!();

  println!("Lado esquerdo .: {}", &palavra[..3]);
  println!("Centro ........: {}", &palavra[3..7]);
  println!("Lado direito ..: {}", &palavra[palavra.len() - 3..]); 
  println!("Reverso .......: {}", palavra.chars().rev().collect::<String>());
  println!("Copias ........: {}", palavra.repeat(3));
  println!("Tira pedaco ...: {}", &palavra[..7]);
  println!("Nova palavra ..: {}{}{}", &palavra[..6], "O", &palavra[7..]);

  println!();
  print!("Tecle <Enter> para encerrar... ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut _entrada = String::new();
  io::stdin().read_line(&mut _entrada).expect("Falha ao ler a entrada");
}
