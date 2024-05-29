! c03ex01.f95

PROGRAM c03ex01
  IMPLICIT NONE

  INTEGER :: a, b, x

  WRITE(*,'(A,$)') 'Entre o 1o. valor numerico inteiro: ' 
  READ(*,*) a

  WRITE(*,'(A,$)') 'Entre o 2o. valor numerico inteiro: '
  READ(*,*) b

  x = a + b

  WRITE(*,'(A,I0)') 'Resultado = ', x

  WRITE(*,*)
  PRINT '(A,$)', 'Tecle <Enter> para encerrar... '
  READ(*,*)

END PROGRAM c03ex01
