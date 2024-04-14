# c04ex11.raku

print "Entre um valor numerico: ";
my $valor = prompt();

unless ($valor > 100) {
  say "O valor e menor ou igual a 100.";
} 
if ($valor > 100) {
  say "O valor e maior que 100.";
}

say "";
print "Tecle <Enter> para encerrar... ";
prompt();
