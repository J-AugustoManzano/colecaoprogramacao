# c07ex03.pl

#!/usr/bin/perl

use strict;
use warnings;

our ($A);
our ($B); 

sub TROCA {
  my $X = $A;
  $A = $B;
  $B = $X;
}

print "Entre um valor para a variavel <A>: ";
$A = <STDIN>;
chomp($A);

print "Entre um valor para a variavel <B>: ";
$B = <STDIN>;
chomp($B);

TROCA();

print "\n";
print "Variavel <A> com valor $A\n";
print "Variavel <B> com valor $B\n";

print "\n";
print "Tecle <Enter> para encerrar... ";
<STDIN>;
