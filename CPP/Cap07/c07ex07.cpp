// c07ex07.cpp

#include <iostream>

bool IGUAL(int A, int B) {
  return A == B;
}

int main(void) {
  int X, Y;

  std::cout << "Informe o 1o. valor: ";
  std::cin >> X;
  std::cin.ignore();

  std::cout << "Informe o 2o. valor: ";
  std::cin >> Y;
  std::cin.ignore();

  if (IGUAL(X, Y))
    std::cout << "Valores sao iguais\n";
  else
    std::cout << "Valores sao diferentes\n";

  std::cout << "\nTecle <Enter> para encerrar... ";
  std::cin.get();

  return 0;
}
