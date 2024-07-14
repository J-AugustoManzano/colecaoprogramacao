// c08ex05.rs

use std::io::{self, Write};

fn main() {
  let mut nomes: Vec<String> = Vec::with_capacity(10);

  println!("PESQUISA SEQUENCIAL DE NOMES\n"); 
  for i in 0..=9 {
    print!("Entre o {:2}o. nome: ", i + 1);
    io::stdout().flush().unwrap();
    let mut entra_nome = String::new();
    io::stdin().read_line(&mut entra_nome).unwrap();
    nomes.push(entra_nome.trim().to_string());
  }

  let mut resp = String::from("SIM");
  while resp == "SIM" {
    println!();
    print!("Entre o nome a ser pesquisado: ");
    io::stdout().flush().unwrap();
    let mut pesq = String::new();
    io::stdin().read_line(&mut pesq).unwrap();
    let pesq = pesq.trim();

    let mut i = 0;
    let mut acha = false;
    while (i <= 9) && (acha == false) {
      if pesq == nomes[i] {
        acha = true;
      } else {
        i += 1;
      }
    }

    println!();
    if acha == true {
      println!("{} foi localizado na posicao {}\n", pesq, i + 1);
    } else {
      println!("{} nao foi localizado\n", pesq);
    }

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
