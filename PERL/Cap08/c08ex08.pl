# c08ex08.pl

#!/usr/bin/perl

use strict;
use warnings;

my $FIM = 10;
my @MATRIZ;
my $INICIO;

sub vazia {
  if ($INICIO == 0) {
    return 1;
  } else {
    return 0;
  }
}

sub cheia {
  if ($INICIO == $FIM) {
    return 1;
  } else {
    return 0;
  }
}

sub adicionar {
  my ($ELEMENTO) = @_;
  if (cheia()) {
    return 0;
  } else {
    $INICIO = $INICIO + 1;
    $MATRIZ[$INICIO] = $ELEMENTO;
    return 1;
  }
}

sub retirar {
  my $ELEMENTO = shift;
  if (vazia()) {
    return 0;
  } else {
    $$ELEMENTO = $MATRIZ[1];
    for (my $I = 1; $I < $INICIO; $I++) {
      $MATRIZ[$I] = $MATRIZ[$I + 1];
    }
    $INICIO = $INICIO - 1;
    return 1;
  }
}

sub entrada {
  print "\n";
  print "Entre um elemento numerico: ";
  chomp(my $X = <STDIN>);
  if (adicionar($X)) {
    print "\n";
    print "Elemento $X inserido na posicao $INICIO.\n";
    print "\n";
  } else {
    print "\n";
    print "Impossivel adicionar $X - fila lotada.\n";
    print "\n";
  }
}

sub saida {
  print "\n";
  my $X;
  if (retirar(\$X)) {
    print "Elemento $X retirado do inicio da fila.\n";
    print "\n";
  } else {
    print "Impossivel retirar elemento - fila vazia.\n";
    print "\n";
  }
}

sub atual {
  print "\n";
  if (!vazia()) {
    print $MATRIZ[1] . " - primeiro elemento da fila.\n";
    print "\n";
  } else {
    print "Impossivel apresentar - fila vazia.\n";
    print "\n";
  }
}

sub exibicao {
  print "\n";
  if (!vazia()) {
    for (my $I = 1; $I <= $INICIO; $I++) {
      print "Posicao: $I possui o elemento $MATRIZ[$I].\n";
    }
  } else {
    print "Impossivel apresentar - fila vazia.\n";
  }
  print "\n";
}

sub criar {
  $INICIO = 0;
  for (my $I = 1; $I <= $FIM; $I++) {
    $MATRIZ[$I] = 0;
  }
}

criar();
my $OPCAO = 0;
while ($OPCAO != 6) {
  print "PROGRAMA: FILA\n\n";
  print "[1] - Entrada\n";
  print "[2] - Saida\n";
  print "[3] - Apresentar 1o. da fila\n";
  print "[4] - Apresentar a fila\n";
  print "[5] - Nova fila\n";
  print "[6] - Sair\n\n";

  print "Escolha uma opcao: ";
  chomp($OPCAO = <STDIN>);
  print "\n";

  if ($OPCAO != 6) {
    if ($OPCAO == 1) {
      entrada();
    } elsif ($OPCAO == 2) {
      saida();
    } elsif ($OPCAO == 3) {
      atual();
    } elsif ($OPCAO == 4) {
      exibicao();
    } elsif ($OPCAO == 5) {
      criar();
      print "\n";
    }
  }
}
