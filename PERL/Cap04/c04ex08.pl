# c04ex08.pl

#!/usr/bin/perl

use strict;
use warnings;

print "Escolha o tipo de transporte:\n";
print "\n";
print "[M] - Motocicleta\n";
print "[S] - Scooter\n";
print "\n";

print "==> ";
my $transp = <STDIN>;
chomp $transp;

print "\n";

if (uc($transp) eq "M" || uc($transp) eq "S") {
    print "Transporte valido.\n";
} else {
    print "Transporte invalido.\n";
}

print "\n";
print "Tecle <Enter> para encerrar... ";
<STDIN>;
