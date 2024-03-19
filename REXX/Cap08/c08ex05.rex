/* c08ex05.rex */

say "PESQUISA SEQUENCIAL DE NOMES"
say

do I = 1 to 10
  call charout, "Entre o " || format(I, "2") || "o. nome: "
  pull NOME.I
end

RESP = "SIM"
do while (RESP == "SIM")
  say
  call charout, "Entre o nome a ser pesquisado: "
  pull PESQ
  I = 1
  ACHA = false
  do while (I <= 10 & ACHA = false)
    if (PESQ == NOME.I) then
      ACHA = true
    else
      I = I + 1
  end
  if (ACHA == true) then
    do
      say
      say PESQ || " foi localizado na posicao " || I
    end
  else
    do 
      say
      say PESQ || " nao foi localizado"
    end
  say
  do forever
    call charout, "Deseja continuar? (SIM/NAO): "
    pull RESP
    if (RESP == "SIM" | RESP == "NAO") then 
      leave
    else 
      do
        say "Informe apenas SIM ou NAO."
        say
      end
  end
end

say
call charout, "Tecle <Enter> para encerrar... "
pull

exit
