/* c04ex06.rex */

call charout, "Entre o 1o. valor numerico: "
pull A

call charout, "Entre o 2o. valor numerico: "
pull B

say
say "Escolha uma opcao de menu:"
say
say "[1] - Adicao"
say "[2] - Subtracao"
say "[3] - Multiplicacao"
say "[4] - Divisao"
say
call charout, "==> "
pull Opcao

say
select
  when (Opcao == 1) then
    do
      say "Calculo de adicao"
      say "Resultado: " || A + B
    end
  when (Opcao == 2) then
    do
      say "Calculo de subtracao"
      say "Resultado: " || A - B
    end
  when (Opcao == 3) then
    do
      say "Calculo de multiplicacao"
      say "Resultado: " || A * B
    end
  when (Opcao == 4) then
    do
      say "Calculo de divisao"
      if (B == 0) then
        say "Resultado: ERRO"
      else
        say "Resultado: " || A / B
    end
  otherwise
    do
      say "Entrada invalida"
      say "Tente novamente em outro momento"
    end
end

say
call charout, "Tecle <Enter> para encerrar... "
pull

exit
