# c06ex02.pl

#!/usr/bin/perl

use strict;
use warnings;

my @NOTAS;

for (my $I = 1; $I <= 8; $I++) {
  print "Entre as notas do aluno $I:\n";
  for (my $J = 1; $J <= 4; $J++) {
    printf "Nota $J: ";
    chomp($NOTAS[$I][$J] = <STDIN>);
  }
  print "\n";
}

print "\n";
print "RELATORIO DE NOTAS\n";
print "\n";
print "Aluno Nota1 Nota2 Nota3 Nota4\n";
print "----- ----- ----- ----- -----\n";
for (my $I = 1; $I <= 8; $I++) {
  printf "%5d ", $I;
  for (my $J = 1; $J <= 4; $J++) {
    printf "%5.1f ", $NOTAS[$I][$J];
  }
  print "\n";
}

print "\n";
print "Tecle <Enter> para encerrar... ";
<STDIN>;
