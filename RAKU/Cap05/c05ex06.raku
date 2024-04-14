# c05ex06.raku

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
} until ($RESP.uc ne "S");

say "";
print "Tecle <Enter> para encerrar... ";
prompt();
