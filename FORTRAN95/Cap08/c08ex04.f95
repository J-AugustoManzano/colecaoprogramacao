! c08ex04.f95

PROGRAM c08ex04
  IMPLICIT NONE
  
  CHARACTER(LEN=20) :: Nomes(5), X
  INTEGER :: I, J

  WRITE(*, '(A)') 'CLASSIFICACAO DE NOMES (DECRESCENTE)'
  PRINT *

  DO I = 1, 5
    WRITE(*, '(A, I2, A, $)') 'Entre o ', I, 'o. nome: '
    READ(*,*) Nomes(I)
  END DO

  DO I = 1, 4
    DO J = I + 1, 5
      IF (Nomes(I) < Nomes(J)) THEN
        X = Nomes(I)
        Nomes(I) = Nomes(J)
        Nomes(J) = X
      END IF
    END DO
  END DO

  PRINT *
  DO I = 1, 5
    WRITE(*, '(I2, A, A)') I, 'o. nome: ', Nomes(I)
  END DO

  PRINT *
  WRITE(*, '(A,$)') 'Tecle <Enter> para encerrar... '
  READ(*,*)

END PROGRAM c08ex04
