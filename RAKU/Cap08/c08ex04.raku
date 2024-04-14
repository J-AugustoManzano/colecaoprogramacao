# c08ex04.raku

say "CLASSIFICACAO DE NOMES (DECRESCENTE)\n";

my @NOMES;

for 1..5 -> $I {
  print "Entre o {$I}o. nome: ";
  @NOMES[$I] = prompt().chomp;
}

for 1..4 -> $I {
  for ($I + 1)..5 -> $J {
    if (@NOMES[$I] lt @NOMES[$J]) {
      my $X = @NOMES[$I];
      @NOMES[$I] = @NOMES[$J];
      @NOMES[$J] = $X;
    }
  }
}

say "";
for 1..5 -> $I {
  say "{$I}o. nome: @NOMES[$I]";
}

say "";
print "Tecle <Enter> para encerrar... ";
prompt();
