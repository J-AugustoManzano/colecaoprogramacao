# c04ex07.pl

#!/usr/bin/perl

use strict;
use warnings;

print "Entre um numero inteiro: ";
my $numero = <STDIN>;
chomp $numero;

if (int($numero) >= 20 && int($numero) <= 90) {
  print "O numero está na faixa de 20 a 90.\n";
} else {
  print "O numero esta fora da faixa de 20 a 90.\n";
}

print "\n";
print "Tecle <Enter> para encerrar... ";
<STDIN>;
