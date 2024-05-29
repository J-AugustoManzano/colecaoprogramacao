! c07ex04.f95

PROGRAM c07ex04
  IMPLICIT NONE

  INTEGER :: Limite

  WRITE(*,'(A,$)') 'Qual fatorial: '
  READ(*,*) Limite

  CALL FATORIAL(Limite)

  WRITE(*,*)
  WRITE(*,'(A,$)') 'Tecle <Enter> para encerrar... '
  READ(*,*)

CONTAINS

  SUBROUTINE FATORIAL(N)
    IMPLICIT NONE
    INTEGER, INTENT(IN) :: N
    INTEGER :: I, Fat

    Fat = 1
    DO I = 1, N
      Fat = Fat * I
    END DO

    WRITE(*,'(A,I0)') 'Fatorial = ', Fat

  END SUBROUTINE FATORIAL

END PROGRAM c07ex04
