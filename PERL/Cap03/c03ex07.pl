# c03ex07.pl 

#!/usr/bin/perl

use strict;
use warnings;

my $Frase = "Aprendendo PERL com o Professor Manzano";

print "Frase ......: " . $Frase . "\n";
print "              " . ("-" x 39) . "\n";
print "              000000000111111111122222222223333333333\n";
print "              012345678901234567890123456789012345678\n";

print "\n";
print "Tamanho ....: " . length($Frase) . " caracteres\n";

my @Palavras = split(/\s+/, $Frase);

print "\n";
print "Palavra 1 .............: " . $Palavras[0] . "\n";
print "Palavra 2 .............: " . $Palavras[1] . "\n";
print "Palavra 3 .............: " . $Palavras[2] . "\n";
print "Palavra 4 .............: " . $Palavras[3] . "\n";

print "\n";
print "Letra 1 da Palavra 1 ..: " . substr($Palavras[0], 0, 1) . "\n";
print "Letra 2 da Palavra 1 ..: " . substr($Palavras[0], 1, 1) . "\n";
print "Letra 3 da Palavra 1 ..: " . substr($Palavras[0], 2, 1) . "\n";
print "Letra 4 da Palavra 1 ..: " . substr($Palavras[0], 3, 1) . "\n";

print "\n";
print "A palavra 'PERL' na posicao: " . index($Frase, "PERL") . "\n";

print "\n";
print "Tecle <Enter> para encerrar... ";
<STDIN>;
