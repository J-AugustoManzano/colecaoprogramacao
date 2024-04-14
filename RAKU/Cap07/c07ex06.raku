# c07ex06.raku

sub FATORIAL($N) {
  my $FAT = 1;
  for 1..$N -> $I {
    $FAT = $FAT * $I;
  }
  return $FAT;
}

print "Qual fatorial: ";
my $LIMITE = prompt();

say "Fatorial = ", FATORIAL($LIMITE);

say "";
print "Tecle <Enter> para encerrar... ";
prompt();
