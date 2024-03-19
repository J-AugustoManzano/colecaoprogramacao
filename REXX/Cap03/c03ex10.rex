/* c03ex10.rex */

Frase = "Aprendendo REXX com o Professor Manzano"

say "Frase ......: " || Frase
say "              " || copies("-", 39)
say "              000000000111111111122222222223333333333"
say "              123456789012345678901234567890123456789"

say
say "Tamanho ....: " || length(Frase) || " caracteres"

parse var Frase Palavra1 Palavra2 Palavra3 Palavra4

say
say "Palavra 1 .............: " || Palavra1
say "Palavra 2 .............: " || Palavra2
say "Palavra 3 .............: " || Palavra3
say "Palavra 4 .............: " || Palavra4

say
say "Letra 1 da Palavra 1 ..: " || substr(Palavra1, 1, 1)
say "Letra 2 da Palavra 1 ..: " || substr(Palavra1, 2, 1)
say "Letra 3 da Palavra 1 ..: " || substr(Palavra1, 3, 1)
say "Letra 4 da Palavra 1 ..: " || substr(Palavra1, 4, 1)

say
say "A palavra 'REXX' na posicao: " || pos("REXX", Frase)

say
call charout, "Tecle <Enter> para encerrar... "
pull

exit
