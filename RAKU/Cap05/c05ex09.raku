# c05ex09.raku

my $I = 1;
loop {
  print "Entre um valor numerico: ";
  my $N = prompt();

  my $R = $N * 3;

  say "Resultado = $R";
  say "";

  last if ($I > 4);
  $I = $I + 1;
}

say "";
print "Tecle <Enter> para encerrar... ";
prompt();
