// c04ex11.dart

import 'dart:io';

void main() {
  int N;
  int R4;
  int R5;

  stdout.write("Entre um numero inteiro: ");
  N = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  R4 = N % 4;
  R5 = N % 5;

  if (R4 == 0 && R5 == 0) {
    print("Resultado = $N");
  } else {
    print("Valor nao e divisivel por 4 e 5");
  }

  stdout.write("\nTecle <Enter> para encerrar... ");
  stdin.readLineSync();
}
