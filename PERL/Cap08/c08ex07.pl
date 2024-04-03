# c08ex07.pl

#!/usr/bin/perl

use strict;
use warnings;

my $LIMITE = 10;
my @MATRIZ;
my $TOPO;

sub vazia {
  if ($TOPO == 0) {
    return 1;
  } else {
    return 0;
  }
}

sub cheia {
  if ($TOPO == $LIMITE) {
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
    $TOPO = $TOPO + 1;
    $MATRIZ[$TOPO] = $ELEMENTO;
    return 1;
  }
}

sub retirar {
  my ($ELEMENTO) = @_;
  if (vazia()) {
    return 0;
  } else {
    $$ELEMENTO = $MATRIZ[$TOPO];
    $MATRIZ[$TOPO] = 0;
    $TOPO = $TOPO - 1;
    return 1;
  }
}

sub empilhar {
  print "\nEntre um elemento numerico: ";
  chomp(my $X = <STDIN>);
  print "\n";
  if (adicionar($X)) {
    print "Elemento $X inserido na posicao $TOPO.\n\n";
  } else {
    print "Impossivel adicionar $X - pilha cheia.\n\n";
  }
}

sub desempilhar {
  print "\n";
  my $ELEMENTO;
  if (retirar(\$ELEMENTO)) {
    print "Elemento $ELEMENTO retirado ";
    print "do topo da pilha.\n\n";
  } else {
    print "Impossivel retirar elemento - pilha vazia.\n\n";
  }
}

sub mostrar {
  print "\n";
  if (!vazia()) {
    for (my $I = $TOPO; $I >= 1; $I--) {
      printf "Posicao: %2d = %d\n", $I, $MATRIZ[$I];
    }
  } else {
    print "Impossivel apresentar - pilha vazia.\n";
  }
  print "\n";
}

sub criar {
  $TOPO = 0;
  for (my $I = 1; $I <= $LIMITE; $I++) {
    $MATRIZ[$I] = 0;
  }
}

criar();
my $OPCAO = 0;
while ($OPCAO != 5) {
  print "PROGRAMA: PILHA\n\n";
  print "[1] - Empilhar\n";
  print "[2] - Desempilhar\n";
  print "[3] - Apresentar\n";
  print "[4] - Criar pilha\n";
  print "[5] - Sair\n\n";

  print "Escolha uma opcao: ";
  chomp($OPCAO = <STDIN>);
  print "\n";

  if ($OPCAO != 5) {
    if ($OPCAO == 1) {
      empilhar();
    } elsif ($OPCAO == 2) {
      desempilhar();
    } elsif ($OPCAO == 3) {
      mostrar();
    } elsif ($OPCAO == 4) {
      criar();
      print "\n";
    }
  }
}
