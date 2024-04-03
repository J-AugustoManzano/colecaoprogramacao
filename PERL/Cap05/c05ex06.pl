# c05ex06.pl

#!/usr/bin/perl

use strict;
use warnings;

my $RESP = "S";
do {
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
} until (uc($RESP) ne "S");

print "\n";
print "Tecle <Enter> para encerrar... ";
<STDIN>;
