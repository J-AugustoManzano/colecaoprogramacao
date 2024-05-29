! c04ex01.f95

PROGRAM c04ex01
  IMPLICIT NONE

  INTEGER :: A, B, X

  WRITE(*,'(A)', ADVANCE='NO') 'Entre o 1o. valor numerico: '
  READ(*,*) A

  WRITE(*,'(A)', ADVANCE='NO') 'Entre o 2o. valor numerico: '
  READ(*,*) B

  X = A + B

  IF (X > 10) THEN
    WRITE(*,'(A,I0)') 'Resultado = ', X
  END IF

  WRITE(*,*)
  WRITE(*,'(A)',ADVANCE='NO') 'Tecle <Enter> para encerrar... '
  READ(*,*)

END PROGRAM c04ex01
