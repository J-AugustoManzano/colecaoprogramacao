// c07ex06.dart

import 'dart:io';

int fatorial(int N) {
  int fat = 1;
  for (int i = 1; i <= N; i++)
    fat *= i;
  return fat;
}

void main() {
  int limite;

  stdout.write("Qual fatorial: ");
  limite = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  print("Fatorial = ${fatorial(limite)}");

  stdout.write("\nTecle <Enter> para encerrar... ");
  stdin.readLineSync();
}
