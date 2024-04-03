# c07ex07.pl

#!/usr/bin/perl

use strict;
use warnings;

sub IGUAL {
  my ($A, $B) = @_;
  my $RESULT;
  if ($A == $B) {
    $RESULT = 0;
  } else {
    $RESULT = 1;
  }
  return $RESULT;
}

print "Informe o 1o. valor: ";
my $X = <STDIN>;
chomp $X;

print "Informe o 2o. valor: ";
my $Y = <STDIN>;
chomp $Y;

if (IGUAL($X, $Y) == 0) {
    print "Valores sao iguais\n";
} else {
    print "Valores sao diferentes\n";
}

print "\n";
print "Tecle <Enter> para encerrar... ";
<STDIN>;
