// c07ex08.dart

import 'dart:io';

int fatorial(int N) {
  if (N == 0)
    return 1;
  else
    return N * fatorial(N - 1);
}

void main() {
  int limite;

  stdout.write("Qual fatorial: ");
  limite = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  print("Fatorial = ${fatorial(limite)}");

  stdout.write("\nTecle <Enter> para encerrar... ");
  stdin.readLineSync();
}
