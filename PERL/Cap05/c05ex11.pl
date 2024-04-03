# c05ex11.pl

#!/usr/bin/perl

use strict;
use warnings;

for (my $I = 1; $I <= 5; $I++) {
  printf "Entre um valor numerico: ";
  my $N = <STDIN>;
  chomp $N;

  my $R = $N * 3;

  print "Resultado = $R\n";
  print "\n";
}

print "\n";
print "Tecle <Enter> para encerrar... ";
<STDIN>;
