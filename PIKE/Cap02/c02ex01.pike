// c02ex01.pike

int main() {

  // Operadores binários
  write(5 + 3 + "\n");             // Saída: 8
  write(10 - 4 + "\n");            // Saída: 6
  write(2 * 6 + "\n");             // Saída: 12
  write(floor(10.0 / 3.0) + "\n"); // Saída: 3 (quociente inteiro)
  write(10 % 3 + "\n");            // Saída: 1 (resto da divisão)

  // Operadores unários
  write(5 + "\n");                 // Saída: 5 (mantém positivo)
  write(-8 + "\n");                // Saída: -8 (inverte sinal)

  // Exponenciação
  write(pow(2, 3) + "\n");         // Saída: 8 (2 elevado a 3)

  return 0;
}
