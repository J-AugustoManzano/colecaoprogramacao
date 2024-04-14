# c05ex11.raku

loop (my $I = 1; $I <= 5; $I++) {
  print "Entre um valor numerico: ";
  my $N = prompt();

  my $R = $N * 3;

  say "Resultado = $R";
  say "";
}

say "";
print "Tecle <Enter> para encerrar... ";
prompt();
