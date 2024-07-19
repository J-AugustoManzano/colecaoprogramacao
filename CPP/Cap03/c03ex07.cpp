// c03ex07.cpp

#include <iostream>
#include <string>
#include <sstream>
#include <algorithm>

using namespace std;

int main(void) {
  string frase = "Aprendendo C++ com o Professor Manzano";
  string palavras[10];
  string busca = "C++";
  int pos;

  cout << "Frase ......: " << frase << endl;
  cout << "              --------------------------------------" << endl;
  cout << "              00000000011111111112222222222333333333" << endl;
  cout << "              01234567890123456789012345678901234567" << endl;
  cout << endl;

  cout << "Tamanho ....: " << frase.length() << " caracteres" << endl;
  cout << endl;

  stringstream iss(frase);
  iss >> palavras[0] >> palavras[1] >> palavras[2] >> palavras[3];

  cout << "Palavra 1 .............: " << palavras[0] << endl;
  cout << "Palavra 2 .............: " << palavras[1] << endl;
  cout << "Palavra 3 .............: " << palavras[2] << endl;
  cout << "Palavra 4 .............: " << palavras[3] << endl;
  cout << endl;

  cout << "Letra 1 da Palavra 1 ..: " << palavras[0][0] << endl;
  cout << "Letra 2 da Palavra 1 ..: " << palavras[0][1] << endl;
  cout << "Letra 3 da Palavra 1 ..: " << palavras[0][2] << endl;
  cout << "Letra 4 da Palavra 1 ..: " << palavras[0][3] << endl;
  cout << endl;

  auto posicao = search(
    frase.begin(), frase.end(), busca.begin(), busca.end()
  );

  pos = distance(frase.begin(), posicao) + 1;
  cout << "A palavra 'C++' na posicao: " << pos << endl;

  cout << "\nTecle <Enter> para encerrar... ";
  cin.get();

  return 0;
}
