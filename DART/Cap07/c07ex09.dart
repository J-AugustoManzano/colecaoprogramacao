// c07ex09.dart

import 'dart:io';

int fatorialBase(int N, int P) {
  if (N == 0)
    return P;
  else
    return fatorialBase(N - 1, N * P);
}

int fatorial(int N) {
  return fatorialBase(N, 1);
}

void main() {
  int limite;

  stdout.write("Qual fatorial: ");
  limite = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  print("Fatorial = ${fatorial(limite)}");

  stdout.write("\nTecle <Enter> para encerrar... ");
  stdin.readLineSync();
}
