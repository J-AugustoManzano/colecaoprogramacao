# c03ex01.pl

#!/usr/bin/perl

use strict;
use warnings;

print "Entre o 1o. valor numerico inteiro: ";
my $A = <STDIN>;
chomp($A);

print "Entre o 2o. valor numerico inteiro: ";
my $B = <STDIN>;
chomp($B);

my $X = int($A) + int($B);

printf "Resultado = %i\n\n", $X;

print "Tecle <Enter> para encerrar... ";
<STDIN>;
