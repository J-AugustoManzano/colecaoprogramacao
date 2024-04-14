# c06ex02.raku

my @NOTAS;
my ($I, $J);

loop ($I = 1; $I <= 8; $I++) {
  say "Entre as notas do aluno $I:";
  loop ($J = 1; $J <= 4; $J++) {
    printf "Nota $J: ";
    @NOTAS[$I][$J] = prompt();
  }
  say "";
}

say "\n";
say "RELATORIO DE NOTAS";
say "";
say "Aluno Nota1 Nota2 Nota3 Nota4";
say "----- ----- ----- ----- -----";
loop ($I = 1; $I <= 8; $I++) {
  printf "%5d ", $I;
  loop ($J = 1; $J <= 4; $J++) {
    printf "%5.1f ", @NOTAS[$I][$J];
  }
  say "";
}

say "";
print "Tecle <Enter> para encerrar... ";
prompt();
