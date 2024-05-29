! c05ex11.f95

PROGRAM c05ex11
  IMPLICIT NONE

  INTEGER :: i, n, r

  DO i = 1, 5, 1
    WRITE(*,'(A,$)') 'Entre um valor numerico: '
    READ(*,*) n

    r = n * 3

    WRITE(*,'(A,I0)') 'Resultado = ', r
    WRITE(*,*)
  END DO

  WRITE(*,*)
  WRITE(*,'(A,$)') 'Tecle <Enter> para encerrar... '
  READ(*,*)

END PROGRAM c05ex11
