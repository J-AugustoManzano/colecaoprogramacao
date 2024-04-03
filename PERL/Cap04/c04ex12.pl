# c04ex12.pl

#!/usr/bin/perl

use strict;
use warnings;

printf "Entre um numero inteiro: ";
my $N = <STDIN>;
chomp $N;

my $R4 = int($N) % 4;
my $R5 = int($N) % 5;

if ($R4 == 0 && $R5 == 0) {
  print "Resultado = " . int($N) . "\n";
} else {
  print "Valor nao e divisivel por 4 e 5\n";
}

print "\n";
print "Tecle <Enter> para encerrar... ";
<STDIN>;
