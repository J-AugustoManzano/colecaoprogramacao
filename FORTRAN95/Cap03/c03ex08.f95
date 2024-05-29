! c03ex08.f95

PROGRAM c03ex08
  IMPLICIT NONE

  INTEGER :: a, b, x

  ! Programa exemplo para operações de duas entradas   !
  ! com cálculo de adição e apresentação de resultado. !

  WRITE(*,*) 'ADICAO DE NUMEROS'
  WRITE(*,*)

  ! Entrada de dados
  WRITE(*,'(A,$)') 'Entre o 1o. valor numerico: '
  READ(*,*) a
  WRITE(*,'(A,$)') 'Entre o 2o. valor numerico: '
  READ(*,*) b

  ! Processamento de dados
  x = a + b ! Cálculo da adição

  ! Saída de dados
  WRITE(*,'(A,I0)') 'Resultado = ', x

  WRITE(*,*)
  WRITE(*,'(A,$)') 'Tecle <Enter> para encerrar... '
  READ(*,*)

END PROGRAM c03ex08
