# c06ex03.pl

#!/usr/bin/perl

use strict;
use warnings;

my %ALUNO;

print "Escola de Computacao XPTO\n";
print "Cadastro Escolar de Aluno\n";
print "\n";

for (my $I = 1; $I <= 8; $I++) {
  print "Aluno: $I\n";
  print "\n";

  printf "Nome ..............: ";
  chomp($ALUNO{$I}{"NOME"} = <STDIN>);

  printf "Turma .............: ";
  chomp($ALUNO{$I}{"TURMA"} = <STDIN>);

  printf "Sala ..............: ";
  chomp($ALUNO{$I}{"SALA"} = <STDIN>);
  print "\n";

  for (my $J = 1; $J <= 4; $J++) {
    printf "Entre a ${J}a. nota ..: ";
    chomp($ALUNO{$I}{"NOTAS"}[$J] = <STDIN>);
  }

  print "\n";
}

print "Escola de Computacao XPTO\n";
print "Cadastro Escolar de Aluno\n";
print "\n";
print "DADOS DOS ALUNOS\n";
printf "Aluno ";
printf "Nome                           ";
printf "Sala ";
printf "Turma ";
printf "Nota1 ";
printf "Nota2 ";
printf "Nota3 ";
printf "Nota4 ";
print "\n";
printf "----- ";
printf "------------------------------ ";
printf "---- ";
printf "----- ";
printf "----- ";
printf "----- ";
printf "----- ";
printf "----- ";
print "\n";

for (my $I = 1; $I <= 8; $I++) {
  printf "%5d ", $I;
  printf "%-30s ", $ALUNO{$I}{"NOME"};
  printf "%4d ", $ALUNO{$I}{"SALA"};
  printf "%5s ", $ALUNO{$I}{"TURMA"};
  for (my $J = 1; $J <= 4; $J++) {
    printf "%5.1f ", $ALUNO{$I}{"NOTAS"}[$J];
  }
  print "\n";
}

print "\n";
print "Tecle <Enter> para encerrar... ";
<STDIN>;
