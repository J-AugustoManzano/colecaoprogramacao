! c08ex03.f95

PROGRAM c08ex03
  IMPLICIT NONE
  
  INTEGER :: Numeros(5), X
  INTEGER :: I, J

  WRITE(*, '(A)') 'CLASSIFICACAO DE NUMEROS (CRESCENTE)'
  PRINT *

  DO I = 1, 5
    WRITE(*, '(A, I2, A, $)') 'Entre o ', I, 'o. numero: '
    READ(*,*) Numeros(I)
  END DO

  DO I = 1, 4
    DO J = I + 1, 5
      IF (Numeros(I) > Numeros(J)) THEN
        X = Numeros(I)
        Numeros(I) = Numeros(J)
        Numeros(J) = X
      END IF
    END DO
  END DO

  PRINT *
  DO I = 1, 5
    WRITE(*, '(I2, A, I2)') I, 'o. numero: ', Numeros(I)
  END DO

  PRINT *
  WRITE(*, '(A,$)') 'Tecle <Enter> para encerrar... '
  READ(*,*)

END PROGRAM c08ex03
