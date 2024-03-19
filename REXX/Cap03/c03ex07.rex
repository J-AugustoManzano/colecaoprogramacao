/* c03ex07.rex */

call charout, "Entre seu nome: "
parse pull Nome

say "Ola, " Nome "! Bem-vindo ao estudo de REXX."

say
call charout, "Tecle <Enter> para encerrar... "
pull

exit
