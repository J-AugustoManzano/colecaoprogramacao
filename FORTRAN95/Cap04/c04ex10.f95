! c04ex10.f95

PROGRAM c04ex10
  IMPLICIT NONE

  INTEGER :: A, B, X, C

  WRITE(*,'(A,$)') 'Entre valor para a variavel <A>: '
  READ(*,*) A

  WRITE(*,'(A,$)') 'Entre valor para a variavel <B>: '
  READ(*,*) B

  WRITE(*,'(A,$)') 'Entre valor para a variavel <X>: '
  READ(*,*) X

  IF (.NOT. (X > 5)) THEN
    C = A + B
  ELSE
    C = A - B
  END IF

  WRITE(*,*)
  WRITE(*,'(A,I0)') 'Resultado = ', C
  WRITE(*,*)

  WRITE(*,'(A,$)') 'Tecle <Enter> para encerrar... '
  READ(*,*)

END PROGRAM c04ex10
