// c07ex03.rs

use std::io::{self, Write};

// Variáveis globais
static mut A: i32 = 0;
static mut B: i32 = 0;

fn troca() {
  unsafe {
    // Variável local
    let x: i32;

    x = A;
    A = B;
    B = x;
  }
}

fn main() {
  unsafe {
    print!("Entre um valor para a variável <A>: ");
    io::stdout().flush().expect("Falha ao limpar o buffer");
    let mut entra_a = String::new();
    io::stdin().read_line(&mut entra_a).expect("Falha ao ler a entrada");
    A = entra_a.trim().parse().expect("Entrada inválida");

    print!("Entre um valor para a variável <B>: ");
    io::stdout().flush().expect("Falha ao limpar o buffer");
    let mut entra_b = String::new();
    io::stdin().read_line(&mut entra_b).expect("Falha ao ler a entrada");
    B = entra_b.trim().parse().expect("Entrada inválida");

    troca();

    println!("");
    println!("Variável <A> com valor {}", A);
    println!("Variável <B> com valor {}", B);

    println!("");
    print!("Tecle <Enter> para encerrar... ");
    io::stdout().flush().expect("Falha ao limpar o buffer");
    let mut _entrada = String::new();
    io::stdin().read_line(&mut _entrada)
      .expect("Falha ao ler a entrada");
  }
}
