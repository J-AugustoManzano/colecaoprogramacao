# c04ex09.pl

#!/usr/bin/perl

use strict;
use warnings;

my ($P1, $P2);

print "Classificacao esportiva\n";
print "\n";
print "Entre \'1\' se atleta pontuou na 1a. prova\n";
print "Entre \'1\' se atleta pontuou na 2a. prova\n";
print "Qualquer outro valor se nao pontuou nas provas\n";
print "\n";

print "Prova 1: ";
$P1 = <STDIN>;

print "Prova 2: ";
$P2 = <STDIN>;

if (($P1 == 1) ^ ($P2 == 1)) {
  print "Atleta participa da terceira prova.\n";
} else {
  print "Atleta nao participa da terceira prova.\n";
  if (($P1 == 1) && ($P2 == 1)) {
    print "Classificado para a final.\n";
  } else {
    print "Desclassificado da competicao.\n";
  }
}

print "\n";
print "Tecle <Enter> para encerrar... ";
<STDIN>;
