! c04ex05.f95

PROGRAM c04ex05
  IMPLICIT NONE

  INTEGER :: Mes

  WRITE(*,'(A,$)') 'Entre com um numero equivalente a um mes: '
  READ(*,*) Mes

  SELECT CASE (Mes)
    CASE (1)
      WRITE(*,'(A)') 'Janeiro'
    CASE (2) 
      WRITE(*,'(A)') 'Fevereiro'
    CASE (3)
      WRITE(*,'(A)') 'Marco'
    CASE (4)
      WRITE(*,'(A)') 'Abril'
    CASE (5)
      WRITE(*,'(A)') 'Maio'
    CASE (6)
      WRITE(*,'(A)') 'Junho'
    CASE (7)
      WRITE(*,'(A)') 'Julho'
    CASE (8)
      WRITE(*,'(A)') 'Agosto'
    CASE (9)
      WRITE(*,'(A)') 'Setembro'
    CASE (10)
      WRITE(*,'(A)') 'Outubro'
    CASE (11)
      WRITE(*,'(A)') 'Novembro'
    CASE (12)
      WRITE(*,'(A)') 'Dezembro'
    CASE DEFAULT
      WRITE(*,'(A)') 'Mes invalido'
  END SELECT

  WRITE(*,*)
  WRITE(*,'(A,$)') 'Tecle <Enter> para encerrar... '
  READ(*,*)

END PROGRAM c04ex05
