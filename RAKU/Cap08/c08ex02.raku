# c08ex02.raku

sub validaInteiro($ENTRADA) {
  return $ENTRADA ~~ /^['+'|'-']?(\d+|\d+'.'\d+)$/;
}

my $NUMERO;

loop {
  print "Entre um valor numerico: ";
  $NUMERO = prompt();
  say "";

  if ($NUMERO.chars == 0) {
    say "Erro: Tecla <Enter> acionada acidentalmente.\n";
    next;
  }
  if (!validaInteiro($NUMERO)) {
    say "Erro: Entre um valor numerico.\n";
    next;
  }

  last;
}

say "Entrada valida fornecida: $NUMERO";

say "";
print "Tecle <Enter> para encerrar... ";
prompt();
