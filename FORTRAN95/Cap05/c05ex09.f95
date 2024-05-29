! c05ex09.f95

PROGRAM c05ex09
  IMPLICIT NONE

  INTEGER :: I, N, R

  I = 1
  DO
    WRITE(*,'(A,$)') 'Entre um valor numerico: '
    READ(*,*) N

    R = N * 3

    WRITE(*,'(A,I0)') 'Resultado = ', R
    WRITE(*,*)
    
    IF (I > 4) EXIT

    I = I + 1
  END DO 

  WRITE(*,*)
  WRITE(*,'(A,$)') 'Tecle <Enter> para encerrar... '
  READ(*,*)

END PROGRAM c05ex09
