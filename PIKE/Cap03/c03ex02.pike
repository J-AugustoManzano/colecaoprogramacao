// c02ex02.pike

#!/usr/bin/env pike

int main()
{
  #define PI 3.14159
  float R, A;

  write("CALCULO DE AREA DE UM CIRCULO\n\n");

  write("Entre o valor do raio: ");
  R = (float)Stdio.stdin->gets();

  A = PI * pow(R, 2);

  write("Resultado = " + sprintf("%.2f", A) + "\n\n");

  write("Tecle <Enter> para encerrar... ");
  (void)Stdio.stdin->getchar();

  return 0;
}
