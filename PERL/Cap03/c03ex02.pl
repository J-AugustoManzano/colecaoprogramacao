# c03ex02.pl 

#!/usr/bin/perl

use strict;
use warnings;

use Math::Trig qw(pi);

print "Entre valor do raio: ";
my $R = <STDIN>;
chomp($R);

my $A = pi * $R ** 2;

printf "Resultado = %f\n\n", $A;

print "Tecle <Enter> para encerrar... ";
<STDIN>;
