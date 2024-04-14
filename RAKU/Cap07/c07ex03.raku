# c07ex03.raku

our ($A, $B);

sub TROCA {
  my $X = $*A;
  $*A = $*B;
  $*B = $X;
}

print "Entre um valor para a variavel <A>: ";
$A = prompt();

print "Entre um valor para a variavel <B>: ";
$B = prompt();

TROCA();

say "";
say "Variavel <A> com valor $A";
say "Variavel <B> com valor $B";

say "";
print "Tecle <Enter> para encerrar... ";
prompt();
