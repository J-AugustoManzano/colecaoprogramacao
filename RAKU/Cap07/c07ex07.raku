# c07ex07.raku

sub IGUAL($A, $B) {
  return $A == $B;
}

print "Informe o 1o. valor: ";
my $X = prompt();

print "Informe o 2o. valor: ";
my $Y = prompt();

if IGUAL($X, $Y) {
  say "Valores sao iguais";
} else {
  say "Valores sao diferentes";
}

say "";
print "Tecle <Enter> para encerrar... ";
prompt();
