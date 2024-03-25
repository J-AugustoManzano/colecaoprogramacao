# c08ex09.awk

BEGIN {

  for (I = 0; I <= 14; I++) {
    printf "%2d - %10d\n", I, FIBONACCI(I)
  }
  
  print ""
  printf "Tecle <Enter> para encerrar... "
  getline < "/dev/tty"
  
}

function FIBONACCI(N) {
  if (N == 0) {
    return 0
  }
  if (N == 1) {
    return 1
  }
  if (N >= 2) {
    return FIBONACCI(N - 1) + FIBONACCI(N - 2)
  }
}
