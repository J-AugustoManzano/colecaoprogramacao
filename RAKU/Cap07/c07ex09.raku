# c07ex09.raku

sub FATORIAL($N) {
  return FATORIAL_BASE($N, 1);
}

sub FATORIAL_BASE($N, $P) {
  if ($N == 0) {
    return $P;
  } else {
    return FATORIAL_BASE($N - 1, $N * $P);
  }
}

print "Qual fatorial: ";
my $LIMITE = prompt();

say "Fatorial = ", FATORIAL($LIMITE);

say "";
print "Tecle <Enter> para encerrar... ";
prompt();
