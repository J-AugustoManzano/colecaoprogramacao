# c07ex08.awk 

BEGIN {

  printf "Qual fatorial: "
  getline LIMITE < "-"
  
  print "Fatorial =", FATORIAL(LIMITE)
  
  print ""
  printf "Tecle <Enter> para encerrar... "
  getline < "-"

}

function FATORIAL(N) {
  if (N == 0) {
    return 1
  } else {
    return N * FATORIAL(N - 1)
  }
}
