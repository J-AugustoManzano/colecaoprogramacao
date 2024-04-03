# c04ex05.pl

#!/usr/bin/perl

use strict;
use warnings;

print "Entre com um numero equivalente a um mes: ";
my $mes = <STDIN>;
chomp $mes;

print "\n";

if (int($mes) == 1) {
  print "Janeiro\n";
} elsif (int($mes) == 2) {
  print "Fevereiro\n";
} elsif (int($mes) == 3) {
  print "Marco\n";
} elsif (int($mes) == 4) {
  print "Abril\n";
} elsif (int($mes) == 5) {
  print "Maio\n";
} elsif (int($mes) == 6) {
  print "Junho\n";
} elsif (int($mes) == 7) {
  print "Julho\n";
} elsif (int($mes) == 8) {
  print "Agosto\n";
} elsif (int($mes) == 9) {
  print "Setembro\n";
} elsif (int($mes) == 10) {
  print "Outubro\n";
} elsif (int($mes) == 11) {
  print "Novembro\n";
} elsif (int($mes) == 12) {
  print "Dezembro\n";
} else {
  print "Valor invalido\n";
}

print "\n";
print "Tecle <Enter> para encerrar... ";
<STDIN>;
