// c06ex03.dart

import 'dart:io';

class Aluno {
  String Nome = "";
  String Turma = "";
  int Sala = 0;
  List<double> Notas = List.filled(4, 0.0);
}

void main() {
  List<Aluno> ALUNO = List.generate(8, (_) => Aluno());

  print("Escola de Computacao XPTO");
  print("Cadastro Escolar de Aluno");
  print("");

  for (int I = 0; I <= 7; I++) {
    print("Aluno: ${I + 1}");
    print("");

    stdout.write("Nome ..............: ");
    ALUNO[I].Nome = stdin.readLineSync() ?? "";

    stdout.write("Turma .............: ");
    ALUNO[I].Turma = stdin.readLineSync() ?? "";

    stdout.write("Sala ..............: ");
    ALUNO[I].Sala = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

    print("");

    for (int J = 0; J <= 3; J++) {
      stdout.write("Entre a ${J + 1}a. nota ..: ");
      ALUNO[I].Notas[J] = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
    }

    print("");
  }

  print("Escola de Computacao XPTO");
  print("Cadastro Escolar de Aluno");
  print("");
  print("DADOS DOS ALUNOS");

  stdout.write("Aluno ");
  stdout.write("Nome                           ");
  stdout.write("Sala ");
  stdout.write("Turma ");
  stdout.write("Nota1 ");
  stdout.write("Nota2 ");
  stdout.write("Nota3 ");
  print("Nota4");

  stdout.write("----- ");
  stdout.write("------------------------------ ");
  stdout.write("---- ");
  stdout.write("----- ");
  stdout.write("----- ");
  stdout.write("----- ");
  stdout.write("----- ");
  print("-----");

  for (int I = 0; I <= 7; I++) {
    stdout.write("${(I + 1).toString().padLeft(5)}");
    stdout.write(" ${ALUNO[I].Nome.padRight(30)}");
    stdout.write(" ${ALUNO[I].Sala.toString().padLeft(4)}");
    stdout.write(" ${ALUNO[I].Turma.padLeft(5)}");
    for (int J = 0; J <= 3; J++) {
      stdout.write(" ${ALUNO[I].Notas[J].toStringAsFixed(1).padLeft(5)}");
    }
    print("");
  }

  print("");
  stdout.write("Tecle <Enter> para encerrar... ");
  stdin.readLineSync();
}
