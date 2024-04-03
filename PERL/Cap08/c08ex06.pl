# c08ex06.pl

#!/usr/bin/perl

use strict;
use warnings;

print "PESQUISA BINARIA DE NUMEROS\n\n";

my @NUMERO;

for (my $I = 1; $I <= 10; $I++) {
  printf "Entre o %2do. numero: ", $I;
  chomp($NUMERO[$I] = <STDIN>);
}

for (my $I = 1; $I <= 9; $I++) {
   for (my $J = $I + 1; $J <= 10; $J++) {
    if ($NUMERO[$I] > $NUMERO[$J]) {
      my $X = $NUMERO[$I];
      $NUMERO[$I] = $NUMERO[$J];
      $NUMERO[$J] = $X;
    }
  }
}

my $RESP = "SIM";
while ($RESP eq "SIM") {
  print "\n";
  printf "Entre o numero a ser pesquisado: ";
  chomp(my $PESQ = <STDIN>);

  my $COMECO = 1;
  my $FINAL = 10;
  my $ACHA = 0;
  my $MEIO;
  while ($COMECO <= $FINAL && $ACHA == 0) {
    $MEIO = int(($COMECO + $FINAL) / 2);
    if ($PESQ == $NUMERO[$MEIO]) {
      $ACHA = 1;
    } else {
      if ($PESQ < $NUMERO[$MEIO]) {
          $FINAL = $MEIO - 1;
      } else {
          $COMECO = $MEIO + 1;
      }
    }
  }

  if ($ACHA == 1) {
    print "\n";
    print $PESQ . " foi localizado na posicao " . $MEIO . "\n";
  } else {
    print "\n";
    print $PESQ . " nao foi localizado\n";
  }

  print "\n";
  inicio:
    printf "Deseja continuar? (SIM/NAO): ";
    chomp(my $RESPOSTA = <STDIN>);
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
