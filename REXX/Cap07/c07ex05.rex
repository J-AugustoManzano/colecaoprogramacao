/* c07ex05.rexx */

call charout , "Qual fatorial: "
pull limite

resp.1 = 1

call fatorial limite, 'resp'

say "Fatorial = " resp.1
say 	
call charout , "Tecle <Enter> para encerrar... "
pull

exit

fatorial:
  parse arg n, fat
  do i = 1 to n
    interpret fat".1 = "fat".1 * "i
  end
return
  
