# c04ex01.raku

print "Entre o 1o. valor numerico: ";
my $A = prompt();

print "Entre o 2o. valor numerico: ";
my $B = prompt();

my $X = $A + $B;

if $X > 10 {
  say "Resultado = $X";
}

say "";
print "Tecle <Enter> para encerrar... ";
prompt();
