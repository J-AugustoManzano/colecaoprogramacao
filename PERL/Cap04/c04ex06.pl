# c04ex06.pl

#!/usr/bin/perl

use strict;
use warnings;

print "Entre o 1o. valor numerico: ";
my $A = <STDIN>;
chomp $A;

print "Entre o 2o. valor numerico: ";
my $B = <STDIN>;
chomp $B;

print "\n";
print "Escolha uma OPCAO de menu:\n";
print "\n";
print "[1] - Adicao\n";
print "[2] - Subtracao\n";
print "[3] - Multiplicacao\n";
print "[4] - Divisao\n";
print "\n";

print "==> ";
my $OPCAO = <STDIN>;
chomp $OPCAO;

print "\n";

if ($OPCAO == 1) {
  print "Calculo de adicao\n";
  print "Resultado: " . ($A + $B) . "\n";
} elsif ($OPCAO == 2) {
  print "Calculo de subtracao\n";
  print "Resultado: " . ($A - $B) . "\n";
} elsif ($OPCAO == 3) {
  print "Calculo de multiplicacao\n";
  print "Resultado: " . ($A * $B) . "\n";
} elsif ($OPCAO == 4) {
  print "Calculo de divisao\n";
  if ($B == 0) {
    print "Resultado: ERRO\n";
  } else {
    print "Resultado: " . ($A / $B) . "\n";
  }
} else {
  print "Entrada invalida\n";
  print "Tente novamente em outro momento\n";
}

print "\n";
print "Tecle <Enter> para encerrar... ";
<STDIN>;
