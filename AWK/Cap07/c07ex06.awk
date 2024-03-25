# c07ex06.awk 

BEGIN {

  printf "Qual fatorial: "
  getline LIMITE < "-"
  
  print "Fatorial = ", FATORIAL(LIMITE)
  
  print ""
  printf "Tecle <Enter> para encerrar... "
  getline < "-"
 
}

function FATORIAL(N) {
  FAT = 1
  for (I = 1; I <= N; I++) {
    FAT = FAT * I;
  }
  return FAT
}
