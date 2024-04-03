# c08ex04.pl

#!/usr/bin/perl

use strict;
use warnings;

print "CLASSIFICACAO DE NOMES (DECRESCENTE)\n\n";

my @NOMES;

for (my $I = 1; $I <= 5; $I++) {
  print "Entre o ${I}o. nome: ";
  $NOMES[$I] = <STDIN>;
  chomp($NOMES[$I]);
}

for (my $I = 1; $I <= 4; $I++) {
  for (my $J = $I + 1; $J <= 5; $J++) {
    if ($NOMES[$I] lt $NOMES[$J]) {
      my $X = $NOMES[$I];
      $NOMES[$I] = $NOMES[$J];
      $NOMES[$J] = $X;
    }
  }
}

print "\n";
for (my $I = 1; $I <= 5; $I++) {
  print "${I}o. nome: $NOMES[$I]\n";
}

print "\n";
print "Tecle <Enter> para encerrar... ";
<STDIN>;
