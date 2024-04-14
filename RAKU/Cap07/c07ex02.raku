# c07ex02.raku

print "Entre um valor para a variavel <A>: ";
my $A = prompt();
    
print "Entre um valor para a variavel <B>: ";
my $B = prompt();

my $X = $A;
$A = $B;
$B = $X;

say "";

say "Variavel <A> com valor $A";
say "Variavel <B> com valor $B";

say "";
print "Tecle <Enter> para encerrar... ";
prompt();
