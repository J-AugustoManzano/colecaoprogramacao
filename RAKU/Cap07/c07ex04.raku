# c07ex04.raku

sub FATORIAL($N) {
  my $FAT = 1;
  
  for 1..$N -> $I {
    $FAT *= $I;
  }
  say "Fatorial = $FAT";
}

print "Qual fatorial: ";
my $LIMITE = prompt();

FATORIAL($LIMITE);

say "";
print "Tecle <Enter> para encerrar... ";
prompt();
