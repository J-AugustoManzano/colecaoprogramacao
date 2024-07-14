// c08ex09.rs

use std::io::{self, Write};

fn fibonacci(n: usize) -> u64 {
  if n == 0 {
    return 0
  } else if n == 1 {
    return 1
  } else {
    return fibonacci(n - 1) + fibonacci(n - 2)
  }
}

fn main() {
  for i in 0..=14 {
    println!("{:2} - {}", i, fibonacci(i));
  }

  println!();
  print!("Pressione <Enter> para encerrar... ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut _entrada = String::new();
  io::stdin().read_line(&mut _entrada).expect("Falha ao ler a entrada");
}

