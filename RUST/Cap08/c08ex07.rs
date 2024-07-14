// c08ex07.rs

use std::io::{self, Write};

const LIMITE: usize = 10;
static mut MATRIZ: [i32; LIMITE] = [0; LIMITE];
static mut TOPO: isize = -1;

fn vazia() -> bool {
  unsafe {
    if TOPO == -1 {
      true
    } else {
      false
    }
  }
}

fn cheia() -> bool {
  unsafe {
    if TOPO == LIMITE as isize - 1 {
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
      TOPO += 1;
      MATRIZ[TOPO as usize] = elemento;
      true
    }
  }
}

fn retirar(elemento: &mut i32) -> bool {
  unsafe {
    if vazia() {
      false
    } else {
      *elemento = MATRIZ[TOPO as usize];
      TOPO -= 1;
      true
    }
  }
}

fn empilhar() {
  print!("Entre um elemento numerico: ");
  io::stdout().flush().unwrap();

  let mut input = String::new();
  io::stdin()
    .read_line(&mut input)
    .expect("Falha na leitura do input");
  let x: i32 = input.trim().parse().expect("Entrada inválida");

  if adicionar(x) {
    unsafe {
      println!("\nElemento {} inserido na posicao {}.", x, TOPO + 1);
    }
  } else {
    println!("\nImpossivel adicionar {} - pilha cheia.", x);
  }
  println!();
}

fn desempilhar() {
  if vazia() {
    println!("Impossivel retirar elemento - pilha vazia.");
  } else {
    let mut elemento: i32 = 0;
    if retirar(&mut elemento) {
        println!("Elemento {} removido do topo da pilha.", elemento);
    }
  }
  println!();
}

fn mostrar() {
  if vazia() {
    println!("Impossivel mostrar - pilha vazia.");
  } else {
    unsafe {
      for i in (0..=TOPO as usize).rev() {
        println!("Posicao {:2}: {}", i + 1, MATRIZ[i]);
      }
    }
  }
  println!();
}

fn criar() {
  unsafe {
    TOPO = -1;
    for i in 0..LIMITE {
      MATRIZ[i] = 0;
    }
  }
}

fn main() {
  criar();
  let mut opcao = 0;
  while opcao != 5 {
    println!("PROGRAMA: PILHA\n");
    println!("[1] - Empilhar");
    println!("[2] - Desempilhar");
    println!("[3] - Mostrar");
    println!("[4] - Criar pilha");
    println!("[5] - Sair\n");

    print!("Escolha uma opcao: ");
    io::stdout().flush().unwrap();

    let mut input = String::new();
    io::stdin()
      .read_line(&mut input)
      .expect("Falha na leitura da opcao");
    opcao = input.trim().parse().expect("Entrada inválida");

    println!();

    if opcao != 5 {
      match opcao {
        1 => {empilhar()},
        2 => {desempilhar()},
        3 => {mostrar()},
        4 => {criar()},
        _ => {},
      }
    }
  }
}
