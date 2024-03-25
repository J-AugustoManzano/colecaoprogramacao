# c07ex07.awk 

BEGIN {

  printf "Informe o 1o. valor: "
  getline X < "-"
  
  printf "Informe o 2o. valor: "
  getline Y < "-"
  
  if (IGUAL(X, Y) == 0) {
    print "Valores são iguais"
  } else {
    print "Valores são diferentes"
  }
  
  print ""
  printf "Tecle <Enter> para encerrar... "
  getline < "-"
 
}

function IGUAL(A, B) {
  if (A == B) {
    RESULT = 0
  } else {
    RESULT = 1
  }
  return RESULT
}
