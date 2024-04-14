# c03ex06.raku

my $Palavra = "COMPUTADOR";

print "Palavra ........: {$Palavra}\n\n";
print "Lado esquerdo ..: {substr($Palavra, 0, 3)}\n";
print "Centro .........: {substr($Palavra, 3, 4)}\n";
print "Lado direito ...: {substr($Palavra, *-3)}\n";
print "Reverso ........: {$Palavra.flip}\n";
print "Copias .........: {$Palavra x 3}\n";
print "Tira pedaco ....: {substr($Palavra, 0, 7)}{substr($Palavra, 8)}\n";
print "Nova palavra ...: {substr($Palavra, 0, 6)}O{substr($Palavra, 7)}\n";

print "\n";
print "Tecle <Enter> para encerrar... ";
prompt();
