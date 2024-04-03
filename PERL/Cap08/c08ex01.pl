# c08ex01.pl

#!/usr/bin/perl

use strict;
use warnings;

my $NUMERO;

inicio:
  print "Entre um valor numerico inteiro: ";
  $NUMERO = <STDIN>;
  chomp($NUMERO);
  print "\n";

  if ($NUMERO ne "") {
    if (caractereEspecial($NUMERO)) {
      print "Erro: Caractere especial nao permitido.\n\n";
    } elsif (validaInteiro($NUMERO)) {
      goto fim;
    } else {
      print "Erro: Entre um numero inteiro.\n\n";
    }
  } else {
      print "Erro: Tecla <Enter> acionada ";
      print "acidentalmente.\n\n";
  }
goto inicio;
fim:

print "Entrada valida fornecida: $NUMERO\n";

print "\n";
print "Tecle <Enter> para encerrar... ";
<STDIN>;

sub caractereEspecial {
  my ($ENTRADA) = @_;
  my $CARACTERE = "!\@#\$%^&*()-_=+[]{}|;:',<>/?`~\"";
    
  for my $i (0..length($CARACTERE)-1) {
    if (index($ENTRADA, substr($CARACTERE, $i, 1)) > -1) {
      return 1;
    }
  }
    
  return 0;
}

sub validaInteiro {
  my ($ENTRADA) = @_;
  return $ENTRADA =~ /^[+-]?\d+$/;
}
