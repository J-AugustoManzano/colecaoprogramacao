# c05ex03.raku

my $I = 1;
until ($I > 5) {
  print "Entre um valor numerico: ";
  my $N = prompt();

  my $R = $N * 3;

  say "Resultado = $R";
  say "";

  $I = $I + 1;
}

say "";
print "Tecle <Enter> para encerrar... ";
prompt();
