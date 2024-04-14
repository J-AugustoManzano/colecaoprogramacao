# c08ex05.raku

say "PESQUISA SEQUENCIAL DE NOMES\n";

my @NOME;

for (1..10) -> $I {
  printf "Entre o %2do. nome: ", $I;
  @NOME[$I] = prompt();
}

my $RESP = "SIM";
while ($RESP eq "SIM") {
  say "";
  printf "Entre o nome a ser pesquisado: ";
  my $PESQ = prompt();
  my $I = 1;
  my $ACHA = False;
  while ($I <= 10 && $ACHA == False) {
    if ($PESQ eq @NOME[$I]) {
      $ACHA = True;
    } else {
      $I = $I + 1;
    }
  }

  if ($ACHA == True) {
    say "";
    say "$PESQ foi localizado na posicao $I";
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

