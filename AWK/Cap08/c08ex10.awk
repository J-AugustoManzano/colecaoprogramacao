# c08ex10.awk

BEGIN {

  for (I = 0; I <= 14; I++) {
    printf "%2d - %10d\n", I, FIBONACCI(I)
  }
  
  print ""
  printf "Tecle <Enter> para encerrar... "
  getline < "/dev/tty"
  
  exit
}

function fibonacciBase(N, X, Y) {
  if (N == 0) {
    return X
  }
  if (N == 1) {
    return Y
  }
  if (N == 2) {
    return X + Y
  }
  if (N >= 2) {
    return fibonacciBase(N - 1, Y, X + Y)
  }
}

function FIBONACCI(N) {
  return fibonacciBase(N, 0, 1)
}
