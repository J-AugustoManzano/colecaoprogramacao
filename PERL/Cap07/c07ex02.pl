# c07ex02.pl

#!/usr/bin/perl

use strict;
use warnings;

print "Entre um valor para a variavel <A>: ";
my $A = <STDIN>;
chomp($A);
    
print "Entre um valor para a variavel <B>: ";
my $B = <STDIN>;
chomp($B);

my $X = $A;
$A = $B;
$B = $X;

print "\n";
print "Variavel <A> com valor $A\n";
print "Variavel <B> com valor $B\n";

print "\n";
print "Tecle <Enter> para encerrar... ";
<STDIN>;
