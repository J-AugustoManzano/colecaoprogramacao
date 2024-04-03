# c05ex10.pl

#!/usr/bin/perl

use strict;
use warnings;

my $RESP = "S";
inicio:
  printf "Entre um valor numerico: ";
  my $N = <STDIN>;
  chomp $N;

  my $R = $N * 3;

  print "Resultado = $R\n";
  print "\n";

  printf "Deseja continuar? (S/N): ";
  $RESP = <STDIN>;
  chomp $RESP;

  print "\n";  
  if (uc($RESP) ne "S") {goto fim};
  
goto inicio;
fim:

print "\n";
print "Tecle <Enter> para encerrar... ";
<STDIN>;
