// c03ex06.cpp

#include <iostream>
#include <string>
#include <vector>

using namespace std;

string inverte(const string& texto) {
  string invertido(texto.rbegin(), texto.rend());
  return invertido;
}

string trocar(const string& texto, int posicao, char novoCaractere) {
  string novoTexto(texto);
  novoTexto[posicao - 1] = novoCaractere;
  return novoTexto;
}

int main(void) {
  string palavra = "COMPUTADOR";
  int tamanho = palavra.length();
  string copias;
  string novaPalavra = trocar(palavra, 7, 'O');

  cout << "Palavra ........: " << palavra << endl;
  cout << endl;
  cout << "Lado esquerdo ..: " << palavra.substr(0, 3) << endl;
  cout << "Centro .........: " << palavra.substr(tamanho / 2 - 2, 4);
  cout << endl;
  cout << "Lado direito ...: " << palavra.substr(tamanho - 3);
  cout << endl;
  cout << "Reverso ........: " << inverte(palavra) << endl;
  copias = palavra + palavra + palavra;
  cout << "Copias .........: " << copias << endl;
  cout << "Nova palavra ...: " << novaPalavra << endl;

  cout << endl;
  cout << "Tecle <Enter> para encerrar... ";
  cin.get();

  return 0;
}
