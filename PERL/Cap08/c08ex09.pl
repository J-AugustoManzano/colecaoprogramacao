# c08ex09.pl

#!/usr/bin/perl

use strict;
use warnings;

sub FIBONACCI {
  my ($N) = @_;
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

for (my $I = 0; $I <= 14; $I++) {
  printf "%2d - %10d\n", $I, FIBONACCI($I);
}

print "\n";
print "Tecle <Enter> para encerrar... ";
<STDIN>;
