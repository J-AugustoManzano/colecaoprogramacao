// c03ex07.d

import std.stdio;
import std.string;

void main() {
  string frase = "Aprendendo D com o Professor Manzano";
  string[] palavras = new string[](10);

  writeln("Frase ......: ", frase);
  writeln("              ------------------------------------");
  writeln("              000000000111111111122222222223333333");
  writeln("              012345678901234567890123456789012345");
  writeln("\n");

  writeln("Tamanho ....: ", frase.length, " caracteres\n");

  auto resultado = frase.split();
  for (size_t i = 0; i <= resultado.length - 1 && i <= 3; i++)
    palavras[i] = resultado[i];

  writeln("Palavra 1 .............: ", palavras[0]);
  writeln("Palavra 2 .............: ", palavras[1]);
  writeln("Palavra 3 .............: ", palavras[2]);
  writeln("Palavra 4 .............: ", palavras[3]);
  writeln("\n");

  writeln("Letra 1 da Palavra 1 ..: ", palavras[0][0]);
  writeln("Letra 2 da Palavra 1 ..: ", palavras[0][1]);
  writeln("Letra 3 da Palavra 1 ..: ", palavras[0][2]);
  writeln("Letra 4 da Palavra 1 ..: ", palavras[0][3]);
  writeln("\n");

  writeln("A palavra 'D' na posicao: ", frase.indexOf("D") + 1, "\n");

  write("Tecle <Enter> para encerrar... ");
  readln();
}
