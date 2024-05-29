! c07ex05.f95

PROGRAM c07ex05
  IMPLICIT NONE

  INTEGER :: RESP, LIMITE

  RESP = 1

  WRITE(*,'(A,$)') 'Qual fatorial: '
  READ(*,*) LIMITE

  CALL FATORIAL(LIMITE, RESP)

  WRITE(*,'(A,I0)') 'Fatorial = ', RESP

  WRITE(*,*)
  WRITE(*,'(A,$)') 'Tecle <Enter> para encerrar... '
  READ(*,*)

CONTAINS

  SUBROUTINE FATORIAL(N, FAT)
    IMPLICIT NONE
    INTEGER, INTENT(IN) :: N
    INTEGER, INTENT(OUT) :: FAT
    INTEGER :: I

    FAT = 1
    DO I = 1, N
      FAT = FAT * I
    END DO

  END SUBROUTINE FATORIAL

END PROGRAM c07ex05
