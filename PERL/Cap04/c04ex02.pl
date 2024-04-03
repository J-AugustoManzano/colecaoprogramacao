# c04ex02.pl

#!/usr/bin/perl

use strict;
use warnings;

print "Entre o 1o. valor numerico: ";
my $A = <STDIN>;

print "Entre o 2o. valor numerico: ";
my $B = <STDIN>;

if ($A > $B) {
  my $X = $A;
  $A = $B;
  $B = $X;
}

printf "Os valores são: %d e %d.\n", $A, $B;
print "\n";
print "Tecle <Enter> para encerrar... ";
<STDIN>;
