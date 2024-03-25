# c07ex05.awk 

BEGIN {

  RESP[1] = 1
  printf "Qual fatorial: "
  getline LIMITE < "-"

  FATORIAL(LIMITE, RESP)

  print "Fatorial = ", RESP[1]

  print
  printf "Tecle <Enter> para encerrar... "
  getline < "-"

}

function FATORIAL(N, FAT) {
  for (I = 1; I <= N; I++) {
    FAT[1] = FAT[1] * I;
  }
}
