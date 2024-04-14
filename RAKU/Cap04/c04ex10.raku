# c04ex10.raku

my ($A, $B, $X, $C);

print "Entre valor para a variavel <A>: ";
$A = prompt();

print "Entre valor para a variavel <B>: ";
$B = prompt();

print "Entre valor para a variavel <X>: ";
$X = prompt();

if (not ($X > 5)) {
  $C = $A + $B;
} else {
  $C = $A - $B;
}

say "";
print "Resultado = $C\n";

say "";
print "Tecle <Enter> para encerrar... ";
prompt();
