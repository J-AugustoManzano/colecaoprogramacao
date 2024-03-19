/* c06ex03.rex */

say "Escola de Computacao XPTO"
say "Cadastro Escolar de Aluno"
say

do I = 1 to 8
  say "Aluno: " || I
  say
  
  call charout, "Nome ..............: "
  pull ALUNO.I.NOME

  call charout, "Turma .............: "
  pull ALUNO.I.TURMA

  call charout, "Sala ..............: "
  pull ALUNO.I.SALA
  say 
  
  do J = 1 to 4
    call charout, "Entre a " || J || "a. nota ..: "
    pull ALUNO.I.NOTAS.J
  end
  
  say
end

say "Escola de Computacao XPTO"
say "Cadastro Escolar de Aluno"
say
say "DADOS DOS ALUNOS"
call charout, "Aluno "
call charout, "Nome                           "
call charout, "Sala "
call charout, "Turma "
call charout, "Nota1 "
call charout, "Nota2 "
call charout, "Nota3 "
call charout, "Nota4 "
say
call charout, "----- "
call charout, "------------------------------ "
call charout, "---- "
call charout, "----- "
call charout, "----- "
call charout, "----- "
call charout, "----- "
call charout, "----- "
say
do I = 1 to 8
  call charout, right(I, 5) || " "
  call charout, left(ALUNO.I.NOME, 30) || " "
  call charout, right(ALUNO.I.SALA, 4) || " "
  call charout, right(ALUNO.I.TURMA, 5) || " "
  do J = 1 to 4
   call charout, right(format(ALUNO.I.NOTAS.J, , 2), 5) || " "
  end
  say
end

say
call charout, "Tecle <Enter> para encerrar... "
pull

exit
