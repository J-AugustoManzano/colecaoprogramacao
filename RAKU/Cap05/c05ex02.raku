# c05ex02.raku

my $RESP = "S";
while ($RESP.uc eq "S") {
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
