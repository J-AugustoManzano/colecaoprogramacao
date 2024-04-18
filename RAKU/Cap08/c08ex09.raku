# c08ex09.raku

sub FIBONACCI ($N) {
  if ($N == 0) {
    return 0;
  }
  if ($N == 1) {
    return 1;
  }
  if ($N >= 2) {
    return FIBONACCI($N - 1) + FIBONACCI($N - 2);
  }
}

for 0..14 -> $I {
  printf "%2d - %10d\n", $I, FIBONACCI($I);
}

say "";
print "Tecle <Enter> para encerrar... ";
prompt();
