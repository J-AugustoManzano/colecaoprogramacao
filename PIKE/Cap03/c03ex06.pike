// c02ex06.pike

#!/usr/bin/env pike

import Stdio;

int main() {
  string palavra = "COMPUTADOR";
  int tamanho = sizeof(palavra) - 1;
  string copias = "";
  string nova_palavra = replace(palavra, "A", "O");

  write("Palavra ........: %s\n", palavra);
  write("\n");
  write("Lado esquerdo ..: %.3s\n", palavra);
  write("Centro .........: %.4s\n", palavra[0 + (tamanho / 2) - 1..]);
  write("Lado direito ...: %.3s\n", palavra[tamanho - 2..]);
  write("Reverso ........: %s\n", reverse(palavra));
  copias = sprintf("%s%s%s", palavra, palavra, palavra);
  write("Copias .........: %s\n", copias);
  write("Nova palavra ...: %s\n", nova_palavra);

  write("\n");
  write("Tecle <Enter> para encerrar... ");
  stdin->getchar();

  return 0;
}
