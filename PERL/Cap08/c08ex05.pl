# c08ex05.pl

#!/usr/bin/perl

use strict;
use warnings;

print "PESQUISA SEQUENCIAL DE NOMES\n\n";

my @NOME;

for (my $I = 1; $I <= 10; $I++) {
  printf "Entre o %2do. nome: ", $I;
  $NOME[$I] = <STDIN>;
  chomp($NOME[$I]);
}

my $RESP = "SIM";
while ($RESP eq "SIM") {
  print "\n";
  printf "Entre o nome a ser pesquisado: ";
  my $PESQ = <STDIN>;
  chomp($PESQ);
  my $I = 1;
  my $ACHA = 0;
  while ($I <= 10 && $ACHA == 0) {
    if ($PESQ eq $NOME[$I]) {
      $ACHA = 1;
    } else {
      $I = $I + 1;
    }
  }

  if ($ACHA == 1) {
    print "\n";
    print "$PESQ foi localizado na posicao $I\n";
  } else {
    print "\n";
    print "$PESQ nao foi localizado\n";
  }

  print "\n";
  inicio:
    printf "Deseja continuar? (SIM/NAO): ";
    my $RESPOSTA = <STDIN>;
    chomp($RESPOSTA);
    $RESP = uc($RESPOSTA);
    if ($RESP eq "SIM" || $RESP eq "NAO") {
      goto fim;
    } else {
      print "Informe apenas SIM ou NAO.\n";
      print "\n";
    }
  goto inicio;
  fim:
}

print "\n";
printf "Tecle <Enter> para encerrar... ";
<STDIN>;
