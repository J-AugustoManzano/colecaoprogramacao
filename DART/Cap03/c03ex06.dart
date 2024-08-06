// c03ex06.dart

import 'dart:io';

void main() {
  String palavra = "COMPUTADOR";
  int tamanho = palavra.length;
  String copias = palavra + palavra + palavra;
  String reverso = palavra.split('').reversed.join('');
  String novaPalavra = 
    "${palavra.substring(0, 6)}O${palavra.substring(7)}";

  print("Palavra ........: $palavra");
  print("");

  print("Lado esquerdo ..: ${palavra.substring(0, 3)}");
  print("Centro .........: ${palavra.substring(3, 7)}");
  print("Lado direito ...: ${palavra.substring(tamanho - 3)}");
  print("Reverso ........: $reverso");
  print("Copias .........: $copias");
  print("Tira pedaco ....: ${palavra.substring(0, 7)}");
  print("Nova palavra ...: $novaPalavra");

  stdout.write("\nTecle <Enter> para encerrar... ");
  stdin.readLineSync();
}
