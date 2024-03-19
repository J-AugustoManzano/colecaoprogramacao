/* c04ex08.rex */

say "Escolha o tipo de transporte:"
say
say "[1] - Motocicleta"
say "[2] - Scooter"
say
call charout, "==> "
pull Transp
say

if (upper(Transp) = "M") | (upper(Transp) = "S") then
  say "Transporte valido."
else
  say "Trasnporte invalido."

say
call charout, "Tecle <Enter> para encerrar... "
pull

exit
