# c07ex01.pl

#!/usr/bin/perl

use strict;
use warnings;

sub ROTSOMA {
  print "\n";
  print "Rotina de Adicao\n";
  print "\n";
  print "Entre o 1o. valor: ";
  my $A1 = <STDIN>;
  chomp($A1);
  print "Entre o 2o. valor: ";
  my $B1 = <STDIN>;
  chomp($B1);
  print "\n";
  my $R1 = $A1 + $B1;
  printf "O resultado da operacao equivale a: %.2f\n", $R1;
  print "\n";
}

sub ROTSUBTRACAO {
  print "\n";
  print "Rotina de Subtracao\n";
  print "\n";
  print "Entre o 1o. valor: ";
  my $A2 = <STDIN>;
  chomp($A2);
  print "Entre o 2o. valor: ";
  my $B2 = <STDIN>;
  chomp($B2);
  print "\n";
  my $R2 = $A2 - $B2;
  printf "O resultado da operacao equivale a: %.2f\n", $R2;
  print "\n";
}

sub ROTMULTIPLICACAO {
  print "\n";
  print "Rotina de Multiplicacao\n";
  print "\n";
  print "Entre o 1o. valor: ";
  my $A3 = <STDIN>;
  chomp($A3);
  print "Entre o 2o. valor: ";
  my $B3 = <STDIN>;
  chomp($B3);
  print "\n";
  my $R3 = $A3 * $B3;
  printf "O resultado da operacao equivale a: %.2f\n", $R3;
  print "\n";
}

sub ROTDIVISAO {
  print "\n";
  print "Rotina de Divisao\n";
  print "\n";
  print "Entre o 1o. valor: ";
  my $A4 = <STDIN>;
  chomp($A4);
  print "Entre o 2o. valor: ";
  my $B4 = <STDIN>;
  chomp($B4);
  print "\n";  
  if ($B4 == 0) {
    print "O resultado da operacao equivale a: ERRO\n";
  } else {
    my $R4 = $A4 / $B4;
    printf "O resultado da operacao equivale a: %.2f\n", $R4;
  }
  print "\n";
}

my $OPCAO = 0;
while ($OPCAO != 5) {
  print "CALCULADORA - V1\n";
  print "\n";
  print "[1] - Adicao\n";
  print "[2] - Subtracao\n";
  print "[3] - Multiplicacao\n";
  print "[4] - Divisao\n";
  print "[5] - Fim de Programa\n";
  print "\n";
  printf "Escolha uma opcao: ";
  $OPCAO = <STDIN>;
  chomp($OPCAO);
  if ($OPCAO != 5) {
    if ($OPCAO == 1) {
      ROTSOMA();
    } elsif ($OPCAO == 2) {
      ROTSUBTRACAO();
    } elsif ($OPCAO == 3) {
      ROTMULTIPLICACAO();
    } elsif ($OPCAO == 4) {
      ROTDIVISAO();
    } else {
        print "\n";
        print "Opcao invalida - Tente novamente\n";
        print "\n";
    }
  }
}
