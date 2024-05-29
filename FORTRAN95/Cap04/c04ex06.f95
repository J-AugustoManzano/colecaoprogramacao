! c04ex06.f95

PROGRAM c04ex06
  IMPLICIT NONE

  REAL :: A, B
  INTEGER Opcao

  WRITE(*,'(A,$)') 'Entre o 1o. valor numerico: '
  READ(*,*) A

  WRITE(*,'(A,$)') 'Entre o 2o. valor numerico: '
  READ(*,*) B

  WRITE(*,*)
  WRITE(*,'(A)') 'Escolha uma opcao de menu:'
  WRITE(*,*)
  WRITE(*,'(A)') '[1] - Adicao'
  WRITE(*,'(A)') '[2] - Subtracao'
  WRITE(*,'(A)') '[3] - Multiplicacao'
  WRITE(*,'(A)') '[4] - Divisao'
  WRITE(*,*)

  WRITE(*,'(A,$)') '==> '
  READ(*,*) Opcao
  WRITE(*,*)

  SELECT CASE (Opcao)
    CASE (1)
      WRITE(*,'(A)') 'Calculo de adicao'
      WRITE(*,'(A,F0.2)') 'Resultado: ', (A + B)
    CASE (2)
      WRITE(*,'(A)') 'Calculo de subtracao'
      WRITE(*,'(A,F0.2)') 'Resultado: ', (A - B)
    CASE (3)
      WRITE(*,'(A)') 'Calculo de multiplicacao'
      WRITE(*,'(A,F0.2)') 'Resultado: ', (A * B)
    CASE (4)
      WRITE(*,'(A)') 'Calculo de divisao'
      IF (B == 0) THEN
        WRITE(*,'(A)') 'Resultado: ERRO'
      ELSE
        WRITE(*,'(A,F0.2)') 'Resultado: ', (A / B)
      END IF
    CASE DEFAULT
      WRITE(*,'(A)') 'Entrada invalida'
      WRITE(*,'(A)') 'Tente novamente em outro momento'
  END SELECT

  WRITE(*,*)
  WRITE(*,'(A,$)') 'Tecle <Enter> para encerrar... '
  READ(*,*)

END PROGRAM c04ex06
