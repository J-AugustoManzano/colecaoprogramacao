# c05ex09.pl

#!/usr/bin/perl

use strict;
use warnings;

my $I = 1;
inicio:
  printf "Entre um valor numerico: ";
  my $N = <STDIN>;
  chomp $N;

  my $R = $N * 3;

  print "Resultado = $R\n";
  print "\n";

  if ($I > 4) {goto fim}
  $I = $I + 1;
  
goto inicio;
fim:

print "\n";
print "Tecle <Enter> para encerrar... ";
<STDIN>;
