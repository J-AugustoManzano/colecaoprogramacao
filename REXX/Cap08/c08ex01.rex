/* c08ex01.rex */

do forever
  call charout, "Entre um valor numerico inteiro: "
  pull NumeroInteiro
  say

  if (NumeroInteiro \== '') then 
    do
      if caractereEspecial(NumeroInteiro) then 
        do
          say "Erro: Caractere especial nao permitido."
          say
        end
      else 
        if (datatype(value(NumeroInteiro), 'W')) then 
          leave
        else 
          do
            say "Erro: Entre numero inteiro."
            say
          end
    end
  else
    do
      say "Erro: Tecla <Enter> acionada acidentalmente."
      say
    end
end

say "Entrada valida fornecida: " || NumeroInteiro

say
call charout, "Tecle <Enter> para encerrar... "
pull

exit

caractereEspecial: procedure
  arg Entrada
  Caractere = "!@#$%^&*()-_=+[]{}|;:',<>/?`~" || '"'
  do i = 1 to length(Caractere)
    if pos(substr(Caractere, i, 1), Entrada) > 0 then 
      return 1
  end
  return 0
