! c07ex06.f95

PROGRAM c07ex06
  IMPLICIT NONE

  INTEGER :: LIMITE

  WRITE(*,'(A,$)') 'Qual fatorial: '
  READ(*,*) LIMITE

  WRITE(*,'(A,I0)') 'Fatorial = ', FATORIAL(LIMITE)

  WRITE(*,*)
  WRITE(*,'(A,$)') 'Tecle <Enter> para encerrar... '
  READ(*,*)

CONTAINS

  FUNCTION FATORIAL(N) RESULT(FAT)
    IMPLICIT NONE
    INTEGER, INTENT(IN) :: N
    INTEGER :: I, FAT

    FAT = 1
    DO I = 1, N
      FAT = FAT * I
    END DO
  END FUNCTION FATORIAL

END PROGRAM c07ex06
