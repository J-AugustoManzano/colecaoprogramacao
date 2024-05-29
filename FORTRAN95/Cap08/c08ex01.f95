! c08ex01.f95

PROGRAM c08ex01
  IMPLICIT NONE

  INTEGER :: I
  CHARACTER(LEN=10) :: Numero
  LOGICAL :: erroEntra

  DO
    WRITE (*, '(A,$)') 'Entre um valor numerico inteiro: '
    READ(*, '(A)') Numero
    PRINT *

    IF (LEN_TRIM(Numero) == 0) THEN
      WRITE (*, '(A)') 'Erro: Tecla <Enter> acionada acidentalmente.'
      PRINT *
      CYCLE
    END IF

    erroEntra = .FALSE.
    DO I = 1, LEN_TRIM(Numero)
      IF (Numero(I:I) < '0' .OR. Numero(I:I) > '9') THEN
        erroEntra = .TRUE.
        EXIT
      END IF
    END DO

    IF (erroEntra) THEN
      WRITE (*, '(A)') 'Erro: Entre um numero inteiro.'
      PRINT *
      CYCLE
    END IF

    EXIT
  END DO

  WRITE (*, '(A,A)') 'Entrada valida fornecida: ', Numero
  WRITE (*,*)
  WRITE (*, '(A,$)') 'Tecle <Enter> para encerrar... '
  READ(*,*)

END PROGRAM c08ex01
