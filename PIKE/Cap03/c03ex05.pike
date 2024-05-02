// c02ex05.pike

#!/usr/bin/env pike

import Stdio;

int main() {
  string nome_previo, nome;

  write("Entre seu nome: ");
  nome_previo = stdin->gets();

  nome = nome_previo[0..sizeof(nome_previo) - 2];
  write("Ola, " + nome + "! Bem-vindo ao estudo de Pike.\n");

  write("Tecle <Enter> para encerrar... ");
  stdin->getchar();

  return 0;
}
