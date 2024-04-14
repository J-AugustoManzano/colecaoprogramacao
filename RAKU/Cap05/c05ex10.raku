# c05ex10.raku

my $RESP = "S";
loop {
  print "Entre um valor numerico: ";
  my $N = prompt();

  my $R = $N * 3;

  say "Resultado = $R";
  say "";

  printf "Deseja continuar? (S/N): ";
  $RESP = prompt();
  say "";

  last if (uc($RESP) ne "S");
}

say "";
print "Tecle <Enter> para encerrar... ";
prompt();
