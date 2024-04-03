# c06ex04.pl

#!/usr/bin/perl

use strict;
use warnings;

print "Entre a quantidade de elementos da matriz: ";
my $N = <STDIN>;
chomp($N);
print "\n";

my @A;

for (my $I = 1; $I <= $N; $I++) {
  printf "Entre o %3do. nome: ", $I;
  chomp($A[$I] = <STDIN>);
}

print "\n";
print "Foram fornecidos os nomes:\n";
print "\n";

for (my $I = 1; $I <= $N; $I++) {
  printf "Nome %3d = %s\n", $I, $A[$I];
}

print "\n";
print "Tecle <Enter> para encerrar... ";
<STDIN>;
