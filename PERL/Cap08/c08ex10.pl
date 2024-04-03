# c08ex10.pl

#!/usr/bin/perl

use strict;
use warnings;

sub fibonacciBase {
  my ($N, $X, $Y) = @_;
  if ($N == 0) {
    return $X;
  }
  if ($N == 1) {
    return $Y;
  }
  return fibonacciBase($N - 1, $Y, $X + $Y);
}

sub FIBONACCI {
  my ($N) = @_;
  return fibonacciBase($N, 0, 1);
}

for (my $I = 0; $I <= 14; $I++) {
  printf "%2d - %10d\n", $I, FIBONACCI($I);
}

print "\n";
print "Tecle <Enter> para encerrar... ";
<STDIN>;
