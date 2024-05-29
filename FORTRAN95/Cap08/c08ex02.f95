! c08ex02.f95

PROGRAM c08ex02
  IMPLICIT NONE

  CHARACTER(LEN=10) :: Numero
  LOGICAL :: erroEntra
  INTEGER :: contaPonto, I

  DO
    WRITE (*, '(A,$)') 'Entre um valor numerico real: '
    READ(*, '(A)') Numero
    PRINT *

    IF (LEN_TRIM(Numero) == 0) THEN
      WRITE (*, '(A)') 'Erro: Tecla <Enter> acionada acidentalmente.'
      PRINT *
      CYCLE
    END IF

    erroEntra = .FALSE.
    contaPonto = 0
    DO I = 1, LEN_TRIM(Numero)
      IF (Numero(I:I) < '0' .OR. Numero(I:I) > '9') THEN
        IF (Numero(I:I) == '.') THEN
          contaPonto = contaPonto + 1
          IF (contaPonto > 1) THEN
            erroEntra = .TRUE.
            EXIT
          END IF
        ELSE
          erroEntra = .TRUE.
          EXIT
        END IF
      END IF
    END DO

    IF (erroEntra) THEN
      WRITE (*, '(A)') 'Erro: Entre um numero real consistente.'
      PRINT *
      CYCLE
    END IF

    EXIT
  END DO

  WRITE (*, '(A,A)') 'Entrada valida fornecida: ', Numero
  
  WRITE (*,*)
  WRITE (*, '(A,$)') 'Tecle <Enter> para encerrar... '
  READ(*,*)

END PROGRAM c08ex02
