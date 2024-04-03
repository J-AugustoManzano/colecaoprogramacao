# c04ex11.pl

#!/usr/bin/perl

use strict;
use warnings;

print "Entre o 1o. valor numerico: ";
my $valor = <STDIN>;

unless ($valor > 100) {
  print "O valor e menor ou igual a 100.\n";
} else {
  print "O valor e maior que 100.\n";
}

print "\n";
print "Tecle <Enter> para encerrar... ";
<STDIN>;
