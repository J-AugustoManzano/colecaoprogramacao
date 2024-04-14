# c05ex08.raku

my $RESP = "S";
repeat {
  print "Entre um valor numerico: ";
  my $N = prompt;
  
  my $R = $N * 3;
  
  say "Resultado = $R";
  say "";
  
  printf "Deseja continuar? (S/N): ";
  $RESP = prompt;
  
  say "";
} while ($RESP.uc eq "S");

say "";
print "Tecle <Enter> para encerrar... ";
prompt();
