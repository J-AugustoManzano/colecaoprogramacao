# c08ex03.pl

#!/usr/bin/perl

use strict;
use warnings;

print "CLASSIFICACAO DE NUMEROS (CRESCENTE)\n\n";

my @NUMEROS;

for (my $I = 1; $I <= 5; $I++) {
  print "Entre o ${I}o. numero: ";
  $NUMEROS[$I] = <STDIN>;
  chomp($NUMEROS[$I]);
}

for (my $I = 1; $I <= 4; $I++) {
  for (my $J = $I + 1; $J <= 5; $J++) {
    if ($NUMEROS[$I] > $NUMEROS[$J]) {
      my $X = $NUMEROS[$I];
      $NUMEROS[$I] = $NUMEROS[$J];
      $NUMEROS[$J] = $X;
    }
  }
}

print "\n";
for (my $I = 1; $I <= 5; $I++) {
  print "${I}o. numero: $NUMEROS[$I]\n";
}

print "\n";
print "Tecle <Enter> para encerrar... ";
<STDIN>;
