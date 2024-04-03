# c07ex05.pl

#!/usr/bin/perl

use strict;
use warnings;

sub FATORIAL {
  my ($N, $FAT) = @_;
  for (my $I = 1; $I <= $N; $I++) {
    $$FAT *= $I;
  }
}

my $RESP = 1;

print "Qual fatorial: ";
my $LIMITE = <STDIN>;
chomp $LIMITE;

FATORIAL($LIMITE, \$RESP);

print "Fatorial = $RESP\n";
print "\n";
print "Tecle <Enter> para encerrar... ";
<STDIN>;
