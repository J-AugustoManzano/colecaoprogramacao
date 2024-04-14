# c05ex04.raku

my $RESP = "S";
until ($RESP.uc ne "S") {
  print "Entre um valor numerico: ";
  my $N = prompt();

  my $R = $N * 3;

  say "Resultado = $R";
  say "";

  print "Deseja continuar? (S/N): ";
  $RESP = prompt();
  say "";
}

say "";
print "Tecle <Enter> para encerrar... ";
prompt();
