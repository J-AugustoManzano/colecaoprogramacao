! c05ex03.f95

PROGRAM c05ex03
  IMPLICIT NONE

  INTEGER :: I, N, R

  I = 1
  DO WHILE (.NOT. (I > 5))
    WRITE(*,'(A,$)') 'Entre um valor numerico: '
    READ(*,*) N

    R = N * 3

    WRITE(*,'(A,I0)') 'Resultado = ', R
    WRITE(*,*)

    I = I + 1
  END DO

  WRITE(*,*)
  WRITE(*,'(A,$)') 'Tecle <Enter> para encerrar... '
  READ(*,*)

END PROGRAM c05ex03
