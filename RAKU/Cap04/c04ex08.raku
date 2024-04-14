# c04ex08.raku

say "Escolha o tipo de transporte:";
say "";
say "[M] - Motocicleta";
say "[S] - Scooter";
say "";

print "==> ";
my $transp = prompt();

say "";

if ($transp.uc eq "M" or $transp.uc eq "S") {
  say "Transporte valido.";
} else {
  say "Transporte invalido.";
}

say "";
print "Tecle <Enter> para encerrar... ";
prompt;
