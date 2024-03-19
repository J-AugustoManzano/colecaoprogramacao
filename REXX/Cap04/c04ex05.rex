/* c04ex05.rex */

call charout, "Entre numero equivalente a um mes: "
pull mes

say
select
  when (trunc(mes) ==  1) then
    say "Janeiro"
  when (trunc(mes) ==  2) then
    say "Fevereiro"
  when (trunc(mes) ==  3) then
    say "Marco"
  when (trunc(mes) ==  4) then
    say "Abril"
  when (trunc(mes) ==  5) then
    say "Maio"
  when (trunc(mes) ==  6) then
    say "Junho"
  when (trunc(mes) ==  7) then
    say "Julho"
  when (trunc(mes) ==  8) then
    say "Agosto"
  when (trunc(mes) ==  9) then
    say "Setembro"
  when (trunc(mes) == 10) then
    say "Outubro"
  when (trunc(mes) == 11) then
    say "Novembro"
  when (trunc(mes) == 12) then
    say "Dezembro"
  otherwise
    say "Valor invalido"
end

say
call charout, "Tecle <Enter> para encerrar... "
pull

exit
