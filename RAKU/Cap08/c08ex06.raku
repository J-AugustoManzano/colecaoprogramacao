# c08ex06.raku

say "PESQUISA BINARIA DE NUMEROS\n";

my @NUMERO;

for (1..10) -> $I {
  printf "Entre o %2do. numero: ", $I;
  @NUMERO[$I] = prompt();
}

for 1..9 -> $I {
  for ($I + 1)..10 -> $J {
    if (@NUMERO[$I] > @NUMERO[$J]) {
      my $X = @NUMERO[$I];
      @NUMERO[$I] = @NUMERO[$J];
      @NUMERO[$J] = $X;
    }
  }
}

my $RESP = "SIM";
while ($RESP eq "SIM") {
  say "";
  printf "Entre o numero a ser pesquisado: ";
  my $PESQ = prompt();
  
  my $COMECO = 1;
  my $FINAL = 10;
  my $ACHA = False;
  my $MEIO;
  while ($COMECO <= $FINAL && $ACHA == False) {
    $MEIO = ($COMECO + $FINAL) div 2;
    if ($PESQ == @NUMERO[$MEIO]) {
      $ACHA = True;
    } else {
      if ($PESQ < @NUMERO[$MEIO]) {
          $FINAL = $MEIO - 1;
      } else {
          $COMECO = $MEIO + 1;
      }
    }
  }

  if ($ACHA == True) {
    say "";
    say "$PESQ foi localizado na posicao $MEIO";
  } else {
    say "";
    say "$PESQ nao foi localizado";
  }

  say "";
  my $RESPOSTA;
  loop {
    printf "Deseja continuar? (SIM/NAO): ";
    $RESPOSTA = prompt();
    $RESP = uc($RESPOSTA);
    last if ($RESP eq "SIM" || $RESP eq "NAO");
    say "Informe apenas SIM ou NAO.";
    say "";
  }
}

say "";
print "Tecle <Enter> para encerrar... ";
prompt();
