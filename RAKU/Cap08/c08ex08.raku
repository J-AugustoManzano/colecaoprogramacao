# c08ex08.raku

my $FIM = 10;
my @MATRIZ;
my $INICIO;

sub vazia {
  if ($INICIO == 0) {
    return True;
  } else {
    return False;
  }
}

sub cheia {
  if ($INICIO == $FIM) {
    return True;
  } else {
    return False;
  }
}

sub adicionar ($ELEMENTO) {
  if (cheia()) {
    return False;
  } else {
    $INICIO = $INICIO + 1;
    @MATRIZ[$INICIO] = $ELEMENTO;
    return True;
  }
}

sub retirar ($ELEMENTO is rw) {
  if (vazia()) {
    return False;
  } else {
    $$ELEMENTO = @MATRIZ[1];
    for 1..$INICIO-1 -> $I {
      @MATRIZ[$I] = @MATRIZ[$I + 1];
    }
    $INICIO = $INICIO - 1;
    return True;
  }
}

sub entrada {
  print "Entre com um elemento numerico: ";
  my $X = prompt();
  if (adicionar($X)) {
    say "\nElemento $X inserido na posicao $INICIO.\n";
  } else {
    say "\nImpossivel adicionar $X - fila lotada.\n";
  }
}

sub saida {
  my $X;
  if (retirar($X)) {
    say "Elemento $X retirado do início da fila.\n";
  } else {
    say "Impossível retirar elemento - fila vazia.\n";
  }
}

sub atual {
  if (!vazia()) {
    say @MATRIZ[1] ~ " - primeiro elemento da fila.\n";
  } else {
    say "Impossivel apresentar - fila vazia.\n";
  }
}

sub exibicao {
  if (!vazia()) {
    for 1..$INICIO -> $I {
      printf "Posicao: %2d = %d\n", $I, @MATRIZ[$I];
    }
  } else {
    say "Impossivel apresentar - fila vazia.";
  }
  say "";
}

sub criar {
  $INICIO = 0;
  for 1..$FIM -> $I {
    @MATRIZ[$I] = 0;
  }
}

criar();
my $OPCAO = 0;
while ($OPCAO != 6) {
  say "PROGRAMA: FILA\n";
  say "[1] - Entrada";
  say "[2] - Saida";
  say "[3] - Apresentar 1o. da fila";
  say "[4] - Apresentar a fila";
  say "[5] - Nova fila";
  say "[6] - Sair";
  say "";
  print "Escolha uma opcao: ";
  $OPCAO = prompt();
  say "";
  if ($OPCAO != 6) {
    given $OPCAO {
      when 1 { entrada(); }
      when 2 { saida(); }
      when 3 { atual(); }
      when 4 { exibicao(); }
      when 5 { criar(); }
    }
  }
}
