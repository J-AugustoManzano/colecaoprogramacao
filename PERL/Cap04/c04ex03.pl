# c04ex03.pl

#!/usr/bin/perl

use strict;
use warnings;

print "Entre o 1o. valor numerico: ";
my $A = <STDIN>;

print "Entre o 2o. valor numerico: ";
my $B = <STDIN>;

my $X = $A + $B;
my $R;

if ($X >= 10) {
  $R = $X + 5;
} else {
  $R = $X - 7;
}

print "Resultado = $R\n";

print "\n";
print "Tecle <Enter> para encerrar... ";
<STDIN>;
