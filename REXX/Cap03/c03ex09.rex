/* c03ex09.rex */

Palavra = "COMPUTADOR"

say "Palavra ........: " || Palavra
say
say "Lado esquerdo ..: " || left(Palavra, 3)
say "Centro .........: " || substr(Palavra, 4, 4)
say "Lado direito ...: " || right(Palavra, 3)
say "Reverso ........: " || reverse(Palavra)
say "Copias .........: " || copies(Palavra, 3)
say "Tira pedaco ....: " || delstr(Palavra, 8)
say "Nova palavra ...: " || overlay("O", Palavra, 7, 1)

say
call charout, "Tecle <Enter> para encerrar... "
pull

exit
