// c08ex06.rs

use std::io::{self, Write};

fn main() {
  let mut numero: Vec<String> = Vec::with_capacity(10);

  println!("PESQUISA BINARIA DE NUMEROS\n");

  for i in 0..=9 {
    print!("Entre o {:2}o. numero: ", i + 1);
    io::stdout().flush().unwrap();
    let mut entra_n = String::new();
    io::stdin().read_line(&mut entra_n).expect("Falha ao ler a entrada");
    numero.push(entra_n.trim().to_string());
  }

  for i in 0..=8 {
    for j in (i + 1)..=9 {
      if numero[i] > numero[j] {
        let x = numero[i].clone();
        numero[i] = numero[j].clone();
        numero[j] = x;
      }
    }
  }

  let mut resp = String::from("SIM");
  while resp == "SIM" {
    println!();
    print!("Entre o numero a ser pesquisado: ");
    io::stdout().flush().unwrap();
    let mut pesq = String::new();
    io::stdin().read_line(&mut pesq).unwrap();
    let pesq = pesq.trim().to_string();

    let mut comeco: usize = 0;
    let mut fim: usize = numero.len() - 1;
    let mut acha: bool = false;
    let mut meio: usize = 0;

    while (comeco <= fim) && (acha == false) {
      meio = (comeco + fim) / 2;
      if pesq == numero[meio] {
        acha = true;
      } else if pesq < numero[meio] {
        fim = meio - 1;
      } else {
        comeco = meio + 1;
      }
    }

    if acha == true {
      println!();
      println!("{} foi localizado na posicao {}", pesq, meio + 1);
    } else {
      println!();
      println!("{} nao foi localizado", pesq);
    }

    println!();
    loop {
      print!("Deseja continuar? (SIM/NAO): ");
      io::stdout().flush().unwrap();
      let mut resposta = String::new();
      io::stdin().read_line(&mut resposta).unwrap();
      let resposta = resposta.trim().to_uppercase();
      if resposta == "SIM" || resposta == "NAO" {
        resp = resposta;
        break;
      } else {
        println!("Informe apenas SIM ou NAO.");
        println!();
      }
    }
  }

  println!();
  print!("Tecle <Enter> para encerrar... ");
  io::stdout().flush().unwrap();
  let mut _input = String::new();
  io::stdin().read_line(&mut _input).unwrap();
}
