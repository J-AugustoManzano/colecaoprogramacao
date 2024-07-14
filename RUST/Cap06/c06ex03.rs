// c06ex03.rs

use std::io::{self, Write};

#[derive(Default)]
struct CadAluno {
  nome: String,
  turma: char,
  sala: i32,
  notas: [f32; 4],
}

fn preenche(texto: &str, tamanho: usize) -> String {
  if texto.len() >= tamanho {
    texto[..tamanho].to_owned()
  } else {
    format!("{:<tamanho$}", texto, tamanho = tamanho)
  }
}

fn main() {
  let mut alunos: [CadAluno; 8] = Default::default();

  println!("Escola de Computacao XPTO");
  println!("Cadastro Escolar de Aluno");
  println!();

  for i in 0..8 {
    println!("Aluno: {}", i + 1);
    println!();

    print!("Nome ..............: ");
    io::stdout().flush().unwrap();
    io::stdin().read_line(&mut alunos[i].nome).unwrap();

    print!("Turma .............: ");
    io::stdout().flush().unwrap();
    let mut turma = String::new();
    io::stdin().read_line(&mut turma).unwrap();
    alunos[i].turma = turma.trim().chars().next().unwrap();

    print!("Sala ..............: ");
    io::stdout().flush().unwrap();
    let mut sala = String::new();
    io::stdin().read_line(&mut sala).unwrap();
    alunos[i].sala = sala.trim().parse().unwrap();
    println!();

    for j in 0..4 {
      print!("Entre a {}a. nota ..: ", j + 1);
      io::stdout().flush().unwrap();
      let mut nota = String::new();
      io::stdin().read_line(&mut nota).unwrap();
      alunos[i].notas[j] = nota.trim().parse().unwrap();
    }
    println!();
  }

  println!("Escola de Computacao XPTO");
  println!("Cadastro Escolar de Aluno");
  println!();
  println!("DADOS DOS ALUNOS");
  print!("Aluno ");
  print!("Nome                           ");
  print!("Sala ");
  print!("Turma ");
  print!("Nota1 ");
  print!("Nota2 ");
  print!("Nota3 ");
  print!("Nota4 ");
  println!();
  print!("----- ");
  print!("------------------------------ ");
  print!("---- ");
  print!("----- ");
  print!("----- ");
  print!("----- ");
  print!("----- ");
  print!("----- ");
  println!();
  for i in 0..8 {
    println!(
      "{:>5} {:<30} {:>4} {:>5} {:>5.1} {:>5.1} {:>5.1} {:>5.1}",
      i + 1,
      preenche(&alunos[i].nome.trim(), 30),
      alunos[i].sala,
      alunos[i].turma,
      alunos[i].notas[0],
      alunos[i].notas[1],
      alunos[i].notas[2],
      alunos[i].notas[3]
    );
    io::stdout().flush().unwrap();
  }

  println!();
  print!("Tecle <Enter> para encerrar... ");
  io::stdout().flush().expect("Falha ao limpar o buffer");
  let mut _entrada = String::new();
  io::stdin().read_line(&mut _entrada).expect("Falha ao ler a entrada");
}
