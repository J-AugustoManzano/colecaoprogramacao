# c03ex03.raku

print "Entre quantidade de horas trabalhadas ..: ";
my $HT = prompt();

print "Entre valor do salario-hora ............: ";
my $VH = prompt();

print "Entre valor do percentual de desconto ..: ";
my $PD = prompt();

my $SB = $HT * $VH;
my $TD = ($PD / 100) * $SB;
my $SL = $SB - $TD;

printf "\nSalario Bruto ....: %.2f\n", $SB;
printf "Salario Liquido ..: %.2f\n\n", $SL;

print "Tecle <Enter> para encerrar... ";
prompt();
