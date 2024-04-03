# c05ex05.pl

#!/usr/bin/perl

use strict;
use warnings;

my $I = 1;
do {
  printf "Entre um valor numerico: ";
  my $N = <STDIN>;
  chomp $N;

  my $R = $N * 3;

  print "Resultado = $R\n";
  print "\n";

  $I = $I + 1;
} until ($I > 5);

print "\n";
print "Tecle <Enter> para encerrar... ";
<STDIN>;
