# c04ex10.pl

#!/usr/bin/perl

use strict;
use warnings;

print "Entre valor para a variavel <A>: ";
my $A = <STDIN>;
chomp $A;

print "Entre valor para a variavel <B>: ";
my $B = <STDIN>;
chomp $B;

print "Entre valor para a variavel <X>: ";
my $X = <>;
chomp $X;

my $C;

if (!($X > 5)) {
  $C = $A + $B;
} else {
  $C = $A - $B;
}

print "\n";
print "Resultado = $C\n";
print "\n";

print "\n";
print "Tecle <Enter> para encerrar... ";
<STDIN>;
