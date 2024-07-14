// c08ex08.rs

use std::io::{self, Write};

const LIMITE: usize = 10;
static mut MATRIZ: [i32; LIMITE] = [0; LIMITE];
static mut INICIO: isize = -1;

fn vazia() -> bool {
  unsafe {
    if INICIO == -1 {
      true
    } else {
      false
    }
  }
}

fn cheia() -> bool {
  unsafe {
    if INICIO == LIMITE as isize - 1 {
      true
    } else {
      false
    }
  }
}

fn adicionar(elemento: i32) -> bool {
  unsafe {
    if cheia() {
      false
    } else {
      INICIO += 1;
      MATRIZ[INICIO as usize] = elemento;
      true
    }
  }
}

fn retirar(elemento: &mut i32) -> bool {
  unsafe {
    if vazia() {
      false
    } else {
      *elemento = MATRIZ[0 as usize];
      for i in 0..INICIO {
        MATRIZ[i as usize] = MATRIZ[(i + 1) as usize];
      }
      INICIO -= 1;
      true
    }
  }
}

fn entrada() {
  print!("Entre um elemento numerico: ");
  io::stdout().flush().unwrap();

  let mut input = String::new();
  io::stdin()
    .read_line(&mut input)
    .expect("Falha na leitura do input");
  let x: i32 = input.trim().parse().expect("Entrada inválida");

  if adicionar(x) {
    unsafe {
      println!("\nElemento {} inserido na posicao {}.", x, INICIO + 1);
    }
  } else {
    println!("\nImpossivel adicionar {} - fila lotada.", x);
  }
  println!();
}

fn saida() {
  if vazia() {
    println!("Impossivel retirar elemento - fila vazia.");
  } else {
    let mut elemento: i32 = 0;
    if retirar(&mut elemento) {
      println!("Elemento {} retirado do inicio da fila.", elemento);
    }
  }
  println!();
}

fn atual() {
  if !vazia() {
    unsafe {
      println!("{} - primeiro elemento da fila.", MATRIZ[0 as usize]);
    }
  } else {
    println!("Impossivel apresentar - fila vazia.");
  }
  println!();
}

fn exibicao() {
  if !vazia() {
    unsafe {
      for i in 0..=INICIO as usize {
        print!("Posicao: {:2}: ", i + 1);
        println!("possui o elemento {}.", MATRIZ[i]);
      }
    }
  } else {
    println!("Impossivel apresentar - fila vazia.");
  }
  println!();
}

fn criar() {
  unsafe {
    INICIO = -1;
    for i in 0..LIMITE {
      MATRIZ[i] = 0;
    }
  }
}

fn main() {
  criar();
  let mut opcao = 0;
  while opcao != 6 {
    println!("PROGRAMA: FILA\n");
    println!("[1] - Entrada");
    println!("[2] - Saida");
    println!("[3] - Apresentar 1o. da fila");
    println!("[4] - Apresentar a fila");
    println!("[5] - Nova fila");
    println!("[6] - Sair\n");

    print!("Escolha uma opcao: ");
    io::stdout().flush().unwrap();

    let mut input = String::new();
    io::stdin()
      .read_line(&mut input)
      .expect("Falha na leitura da opcao");
    opcao = input.trim().parse().expect("Entrada inválida");

    println!();

    if opcao != 6 {
      match opcao {
        1 => {entrada()},
        2 => {saida()},
        3 => {atual()},
        4 => {exibicao()},
        5 => {criar()},
        _ => {}
      }
    }
  }
}
