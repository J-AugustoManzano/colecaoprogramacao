# c07ex08.pl

#!/usr/bin/perl

use strict;
use warnings;

sub FATORIAL {
  my ($N) = @_;
  if ($N == 0) {
    return 1;
  } else {
    return $N * FATORIAL($N - 1);
  }
}

print "Qual fatorial: ";
my $LIMITE = <STDIN>;
chomp $LIMITE;

print "Fatorial = ", FATORIAL($LIMITE), "\n";

print "\n";
print "Tecle <Enter> para encerrar... ";
<STDIN>;
