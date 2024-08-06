// c07ex04.dart

import 'dart:io';

void fatorial(int N) {
  int fat = 1;
  for (int i = 1; i <= N; i++)
    fat *= i;
  print("Fatorial = $fat");
}

int limite = 0;

void main() {
  stdout.write("Qual fatorial: ");
  limite = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  fatorial(limite);

  stdout.write("\nTecle <Enter> para encerrar... ");
  stdin.readLineSync();
}
