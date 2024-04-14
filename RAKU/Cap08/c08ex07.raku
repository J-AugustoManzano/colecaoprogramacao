# c08ex07.raku

say "PESQUISA BINARIA DE NUMEROS\n";

my $LIMITE = 10;
my @MATRIZ;
my $TOPO;

sub vazia {
  if ($TOPO == 0) {
    return True;
  } else {
    return False;
  }
}

sub cheia {
  if ($TOPO == $LIMITE) {
    return True;
  } else {
    return False;
  }
}

sub adicionar ($ELEMENTO) {
  if (cheia()) {
    return False;
  } else {
    $TOPO = $TOPO + 1;
    @MATRIZ[$TOPO] = $ELEMENTO;
    return True;
  }
}

sub retirar ($ELEMENTO is rw) {
  if (vazia()) {
    return False;
  } else {
    $$ELEMENTO = @MATRIZ[$TOPO];
    @MATRIZ[$TOPO] = 0;
    $TOPO = $TOPO - 1;
    return True;
  }
}

sub empilhar {
  print "Entre com um elemento numerico: ";
  my $X = prompt();
  say "";
  if (adicionar($X)) {
    say "Elemento $X inserido na posicao $TOPO.\n";
  } else {
    say "Impossivel adicionar $X - pilha cheia.\n";
  }
}

sub desempilhar {
  my $ELEMENTO;
  if (retirar($ELEMENTO)) {
    say "Elemento $ELEMENTO retirado do topo da pilha.\n";
  } else {
    say "Impossivel retirar elemento - pilha vazia.\n";
  }
}

sub mostrar {
  if (!vazia()) {
    for $TOPO ... 1 -> $I {
      printf "Posicao: %2d = %d\n", $I, @MATRIZ[$I];
    }
  } else {
    say "Impossivel apresentar - pilha vazia.\n";
  }
}

sub criar {
  $TOPO = 0;
  for 1..$LIMITE -> $I {
    @MATRIZ[$I] = 0;
  }
}

criar();
my $OPCAO = 0;
while ($OPCAO != 5) {
  say "PROGRAMA: PILHA\n";
  say "[1] - Empilhar";
  say "[2] - Desempilhar";
  say "[3] - Apresentar";
  say "[4] - Criar pilha";
  say "[5] - Sair\n";
  print "Escolha uma opcao: ";
  $OPCAO = prompt();
  say "";
  given ($OPCAO) {
    when 1 { empilhar(); }
    when 2 { desempilhar(); }
    when 3 { mostrar(); }
    when 4 { criar(); }
  }
}
