# c07ex04.awk 

BEGIN {

  printf "Qual fatorial: "
  getline LIMITE < "/dev/tty"

  FATORIAL(LIMITE)

  print
  printf "Tecle <Enter> para encerrar... "
  getline < "/dev/tty"

}

function FATORIAL(N) {
  FAT = 1
  for (I = 1; I <= N; I++) {
    FAT = FAT * I
  }
  print "Fatorial = " FAT
}
