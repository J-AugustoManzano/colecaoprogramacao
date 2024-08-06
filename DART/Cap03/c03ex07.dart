// c03ex07.dart

import 'dart:io';

void main() {
  String frase = "Aprendendo Dart com o Professor Manzano";
  List<String> palavras = frase.split(" ");
  String busca = "Dart";
  int pos;

  print("Frase ......: $frase");
  print("              ---------------------------------------");
  print("              000000000111111111122222222223333333333");
  print("              012345678901234567890123456789012345678");
  print("");

  print("Tamanho ....: ${frase.length} caracteres");
  print("");

  for (int i = 0; i < 3; i++)
    print("Palavra ${i + 1} .............: ${palavras[i]}");
  print("");

  print("Letra 1 da Palavra 1 ..: ${palavras[0][0]}");
  print("Letra 2 da Palavra 1 ..: ${palavras[0][1]}");
  print("Letra 3 da Palavra 1 ..: ${palavras[0][2]}");
  print("Letra 4 da Palavra 1 ..: ${palavras[0][3]}");
  print("");

  pos = frase.indexOf(busca) + 1;
  print("A palavra 'Dart' na posicao: $pos");

  stdout.write("\nTecle <Enter> para encerrar... ");
  stdin.readLineSync();
}
