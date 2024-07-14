// c04ex11.rs

use std::io::{self, Write};

fn main() {
  let n:  i32;
  let r4: i32;
  let r5: i32;

  print!("Entre um numero inteiro: ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut entra_n = String::new();
  io::stdin().read_line(&mut entra_n).expect("Falha ao ler a entrada");
  n = entra_n.trim().parse().expect("Entrada inválida");

  r4 = n % 4;
  r5 = n % 5;

  if (r4 == 0) && (r5 == 0) {
    println!("Resultado = {}", n);
  } else {
    println!("Valor nao e divisivel por 4 e 5");
  }

  println!();
  print!("Tecle <Enter> para encerrar... ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut _entra = String::new();
  io::stdin().read_line(&mut _entra).expect("Falha ao ler a entrada");
}
