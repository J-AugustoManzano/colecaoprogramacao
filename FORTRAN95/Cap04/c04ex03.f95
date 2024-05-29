! c04ex03.f95

PROGRAM c04ex03
  IMPLICIT NONE

  INTEGER :: A, B, X, R

  WRITE(*,'(A,$)') 'Entre o 1o. valor numerico: '
  READ(*,*) A

  WRITE(*,'(A,$)') 'Entre o 2o. valor numerico: '
  READ(*,*) B

  X = A + B

  IF (X >= 10) THEN
    R = X + 5
  ELSE
    R = X - 7
  END IF

  WRITE(*,'(A,I0)') 'Resultado = ', R

  WRITE(*,*)
  WRITE(*,'(A,$)') 'Tecle <Enter> para encerrar... '
  READ(*,*)

END PROGRAM c04ex03
