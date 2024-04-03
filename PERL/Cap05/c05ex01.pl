# c05ex01.pl

#!/usr/bin/perl

use strict;
use warnings;

my $I = 1;
while ($I <= 5) {
  printf "Entre um valor numerico: ";
  my $N = <STDIN>;
  chomp $N;

  my $R = $N * 3;

  print "Resultado = $R\n";
  print "\n";

  $I = $I + 1;
}

print "\n";
print "Tecle <Enter> para encerrar... ";
<STDIN>;
