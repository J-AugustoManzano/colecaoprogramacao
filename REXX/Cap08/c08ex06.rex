/* c08ex06.rex */

say "PESQUISA BINARIA DE NUMEROS"
say

do I = 1 to 10
  call charout, "Entre o " || format(I, "2") || "o. numero: "
  pull NUMERO.I
end

do I = 1 to 9
  do J = I + 1 to 10
    if (NUMERO.I > NUMERO.J) then 
      do
        X = NUMERO.I
        NUMERO.I = NUMERO.J
        NUMERO.J = X
      end
  end
end

RESP = "SIM"
do while RESP = "SIM"
  say
  call charout, "Entre o numero a ser pesquisado: "
  pull PESQ
  COMECO = 1
  FINAL = 10
  ACHA = false
  do while (COMECO <= FINAL & ACHA == false)
    MEIO = (COMECO + FINAL) % 2
    if (PESQ == NUMERO.MEIO) then
      ACHA = true
    else
      if (PESQ < NUMERO.MEIO) then
        FINAL = MEIO - 1
      else
        COMECO = MEIO + 1
  end
  if (ACHA == true) then
    do
      say
      say PESQ || " foi localizado na posicao " || MEIO
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
