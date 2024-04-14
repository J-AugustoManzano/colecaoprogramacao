# c07ex08.raku

sub FATORIAL($N) {
  if ($N == 0) {
    return 1;
  } else {
    return $N * FATORIAL($N - 1);
  }
}

print "Qual fatorial: ";
my $LIMITE = prompt();

say "Fatorial = ", FATORIAL($LIMITE);

say "";
print "Tecle <Enter> para encerrar... ";
prompt();
