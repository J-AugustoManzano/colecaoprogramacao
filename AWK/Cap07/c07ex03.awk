# c07ex03.awk 

BEGIN {

  printf "Entre um valor para a variavel <A>: "
  getline A < "/dev/tty"

  printf "Entre um valor para a variavel <B>: "
  getline B < "/dev/tty"

  TROCA()

  print
  print "Variavel <A> com valor " A
  print "Variavel <B> com valor " B

  print
  printf "Tecle <Enter> para encerrar... "
  getline < "/dev/tty"

}

function TROCA() {
  X = A
  A = B
  B = X
}
