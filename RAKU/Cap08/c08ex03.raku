# c08ex03.raku

say "CLASSIFICACAO DE NUMEROS (CRESCENTE)\n";

my @NUMEROS;

for 1..5 -> $I {
  print "Entre o {$I}o. numero: ";
  @NUMEROS[$I] = prompt()
}

for 1..5 -> $I {
  for 1..5 -> $J = I + 1 {
    if (@NUMEROS[$I] > @NUMEROS[$J]) {
      my $X = @NUMEROS[$I];
      @NUMEROS[$I] = @NUMEROS[$J];
      @NUMEROS[$J] = $X;
    }
  }
}

say "";
for 1..5 -> $I {
  say "{$I}o. numero: @NUMEROS[$I]";
}

say "";
print "Tecle <Enter> para encerrar... ";
prompt();
