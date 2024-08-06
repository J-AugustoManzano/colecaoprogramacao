// c07ex05.dart

import 'dart:io';

void fatorial(int N, List<int> FAT) {
  FAT[0] = 1;
  for (int I = 1; I <= N; I++) {
    FAT[0] *= I;
  }
}

void main() {
  int RESP = 1;
  int LIMITE;

  stdout.write("Qual fatorial: ");
  LIMITE = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  List<int> FAT = [RESP];
  fatorial(LIMITE, FAT);

  print("Fatorial = ${FAT[0]}");

  stdout.write("\nTecle <Enter> para encerrar... ");
  stdin.readLineSync();
}
