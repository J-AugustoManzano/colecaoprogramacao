# c07ex09.awk 

BEGIN {

  printf "Qual fatorial: "
  getline LIMITE < "-"
  
  print "Fatorial =", FATORIAL(LIMITE)
  
  print ""
  printf "Tecle <Enter> para encerrar... "
  getline < "-"

}

function FATORIAL(N) {
  return FATORIAL_BASE(N, 1)
}

function FATORIAL_BASE(N, P) {
  if (N == 0) {
    return P
  } else {
    return FATORIAL_BASE(N - 1, N * P)
  }
}
