# c07ex09.pl

#!/usr/bin/perl

use strict;
use warnings;

sub FATORIAL {
  my ($N) = @_;
  return FATORIAL_BASE($N, 1);
}

sub FATORIAL_BASE {
  my ($N, $P) = @_;
  if ($N == 0) {
    return $P;
  } else {
    return FATORIAL_BASE($N - 1, $N * $P);
  }
}

print "Qual fatorial: ";
my $LIMITE = <STDIN>;
chomp $LIMITE;

print "Fatorial = ", FATORIAL($LIMITE), "\n";

print "\n";
print "Tecle <Enter> para encerrar... ";
<STDIN>;
