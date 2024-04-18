# c08ex10.raku

sub fibonacciBase ($N, $X, $Y) {
  if ($N == 0) {
    return $X;
  }
  if ($N == 1) {
    return $Y;
  }
  return fibonacciBase($N - 1, $Y, $X + $Y);
}

sub FIBONACCI ($N) {
  return fibonacciBase($N, 0, 1);
}

for 0..14 -> $I {
  printf "%2d - %10d\n", $I, FIBONACCI($I);
}

say "";
print "Tecle <Enter> para encerrar... ";
prompt();
