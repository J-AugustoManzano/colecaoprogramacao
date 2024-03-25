# c04ex10.awk 

BEGIN {

  printf "Entre valor para a variavel <A>: "
  getline A < "-"
  
  printf "Entre valor para a variavel <B>: "
  getline B < "-"
  
  printf "Entre valor para a variavel <X>: "
  getline X < "-"

  if (! (X > 5)) {
    C = A + B
  } else {
    C = A - B
  }

  print ""
  print "Resultado = " C

  print ""
  printf "Tecle <Enter> para encerrar... "
  getline < "-"
 
}
