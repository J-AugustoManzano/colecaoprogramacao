# c06ex03.raku

my %ALUNO;
my ($I, $J);

say "Escola de Computacao XPTO";
say "Cadastro Escolar de Aluno";
say "";

loop ($I = 1; $I <= 8; $I++) {
  say "Aluno: $I";
  say "";

  printf "Nome ..............: ";
  %ALUNO{$I}{"NOME"} = prompt();

  printf "Turma .............: ";
  %ALUNO{$I}{"TURMA"} = prompt();

  printf "Sala ..............: ";
  %ALUNO{$I}{"SALA"} = prompt();
  say "";

  loop ($J = 1; $J <= 4; $J++) {
    printf "Entre a {$J}a. nota ..: ";
    %ALUNO{$I}{"NOTAS"}[$J] = prompt();
  }

  say "";
}

say "Escola de Computacao XPTO";
say "Cadastro Escolar de Aluno";
say "";
say "DADOS DOS ALUNOS";
printf "Aluno ";
printf "Nome                           ";
printf "Sala ";
printf "Turma ";
printf "Nota1 ";
printf "Nota2 ";
printf "Nota3 ";
printf "Nota4 ";
say "";
printf "----- ";
printf "------------------------------ ";
printf "---- ";
printf "----- ";
printf "----- ";
printf "----- ";
printf "----- ";
printf "----- ";
say "";

loop ($I = 1; $I <= 8; $I++) {
  printf "%5d ", $I;
  printf "%-30s ", %ALUNO{$I}{"NOME"};
  printf "%4d ", %ALUNO{$I}{"SALA"};
  printf "%5s ", %ALUNO{$I}{"TURMA"};
  loop ($J = 1; $J <= 4; $J++) {
    printf "%5.1f ", %ALUNO{$I}{"NOTAS"}[$J];
  }
  say "";
}

say "";
print "Tecle <Enter> para encerrar... ";
prompt();
