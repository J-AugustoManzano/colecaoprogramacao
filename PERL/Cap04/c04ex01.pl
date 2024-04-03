# c04ex01.pl

#!/usr/bin/perl

use strict;
use warnings;

print "Entre o 1o. valor numerico: ";
my $A = <STDIN>;
chomp $A;

print "Entre o 2o. valor numerico: ";
my $B = <STDIN>;
chomp $B;

my $X = $A + $B;

if ($X > 10) {
  print "Resultado = $X\n";
}

print "\n";
print "Tecle <Enter> para encerrar... ";
<STDIN>;
