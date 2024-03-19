/* c08ex02.rex */

do forever
  call charout, "Entre um valor numerico real: "
  pull Numero
  say

  if (Numero \== '') then 
    do
      if caractereEspecial(Numero) then 
        do
          say "Erro: Caractere especial nao permitido."
          say
        end
      else 
        if (datatype(value(Numero), 'N')) then 
          leave
        else 
          do
            say "Erro: Entre numero real."
            say
          end
    end
  else
    do
      say "Erro: Tecla <Enter> acionada acidentalmente."
      say
    end
end

say "Entrada valida fornecida: " || Numero

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
