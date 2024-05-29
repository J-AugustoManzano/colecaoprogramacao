! c04ex11.f95

PROGRAM c04ex11
  IMPLICIT NONE

  INTEGER :: N, R4, R5

  WRITE(*,'(A,$)') 'Entre um numero inteiro: '
  READ(*,*) N

  R4 = MOD(N, 4)
  R5 = MOD(N, 5)

  IF ((R4 == 0) .AND. (R5 == 0)) THEN
    WRITE(*,'(A,I0)') 'Resultado = ', N
  ELSE
    WRITE(*,'(A)') 'Valor nao e divisivel por 4 e 5'
  END IF

  WRITE(*,*)
  WRITE(*,'(A,$)') 'Tecle <Enter> para encerrar... '
  READ(*,*)

END PROGRAM c04ex11
