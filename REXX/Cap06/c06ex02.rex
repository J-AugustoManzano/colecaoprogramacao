/* c06ex02.rex */

do I = 1 to 8
  say "Entre as notas do aluno " || I || ":"
  do J = 1 to 4
    call charout, "Nota ==> " || J || ": "
    parse pull NOTAS.I.J
  end
  say
end

say
say "RELATORIO DE NOTAS"
say
say "Aluno Nota1 Nota2 Nota3 Nota4"
say "----- ----- ----- ----- -----"
do I = 1 to 8
  call charout, right(I, 5) || " "
  do J = 1 to 4
    call charout, right(format(NOTAS.I.J, , 1), 5) || " "
  end
  say
end

say
call charout, "Tecle <Enter> para encerrar... "
pull

exit
