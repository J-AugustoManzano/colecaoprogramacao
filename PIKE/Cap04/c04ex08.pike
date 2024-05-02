// c04ex08.pike

#!/usr/bin/env pike

import Stdio;

int main()
{
  string Transp, TranspPrevio;

  write("Escolha o tipo de transporte:\n");
  write("[M] - Motocicleta\n");
  write("[S] - Scooter\n\n");

  write("==> ");
  TranspPrevio = upper_case(stdin->gets());
  Transp = TranspPrevio[0..sizeof(TranspPrevio) - 2];  
  write("\n");

  if (Transp == "M" || Transp == "S")
    write("Transporte valido.\n");
  else
    write("Transporte invalido.\n");

  write("\nTecle <Enter> para encerrar... ");
  stdin->getchar();

  return 0;
}
