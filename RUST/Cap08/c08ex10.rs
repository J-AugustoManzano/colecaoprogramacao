// c08ex10.rs

use std::io::{self, Write};

fn fibonacci_base(n: usize, x: u64, y: u64) -> u64 {
  if n == 0 {
    return x
  } 
  if n == 1 {
    return y
  } 
  if n >= 2 {
    return fibonacci_base(n - 1, y, x + y)
  }
  unreachable!()
}

fn fibonacci(n: usize) -> u64 {
  fibonacci_base(n, 0, 1)
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

