# c06ex06.pl

#!/usr/bin/perl

use strict;
use warnings;

print "Entre um numero para tabuada: ";
my $N = <STDIN>;
chomp $N;

print "\n";

foreach my $I (1..10) {
  my $R = $N * $I;
  printf "%3d X %2d = %3d\n", $N, $I, $R;
}

print "\n";
print "Tecle <Enter> para encerrar... ";
<STDIN>;
