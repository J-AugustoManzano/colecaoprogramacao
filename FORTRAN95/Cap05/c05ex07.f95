! c05ex07.f95

PROGRAM c05ex07
  IMPLICIT NONE

  INTEGER :: I, N, R

  I = 1
  DO
    WRITE(*,'(A,$)') 'Entre um valor numerico: '
    READ(*,*) N

    R = N * 3

    WRITE(*,'(A,I0)') 'Resultado = ', R
    WRITE(*,*)

    I = I + 1
    IF (.NOT. (I <= 5)) EXIT
  END DO 

  WRITE(*,*)
  WRITE(*,'(A,$)') 'Tecle <Enter> para encerrar... '
  READ(*,*)

END PROGRAM c05ex07
