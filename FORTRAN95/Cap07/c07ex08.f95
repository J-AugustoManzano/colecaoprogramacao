! c07ex08.f95

PROGRAM c07ex08
  IMPLICIT NONE

  INTEGER :: LIMITE

  WRITE(*,'(A,$)') 'Qual fatorial: '
  READ(*,*) LIMITE

  WRITE(*,'(A,I0)') 'Fatorial = ', FATORIAL(LIMITE)

  WRITE(*,*)
  WRITE(*,'(A,$)') 'Tecle <Enter> para encerrar... '
  READ(*,*)

CONTAINS

  RECURSIVE FUNCTION FATORIAL(N) RESULT(RESULTADO)
    IMPLICIT NONE
    INTEGER, INTENT(IN) :: N
    INTEGER :: RESULTADO

    IF (N == 0) THEN
      RESULTADO = 1
    ELSE
      RESULTADO = N * FATORIAL(N - 1)
    END IF
  END FUNCTION FATORIAL

END PROGRAM c07ex08
