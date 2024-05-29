! c08ex05.f95

PROGRAM c08ex05
  IMPLICIT NONE

  CHARACTER(LEN=10), DIMENSION(10) :: NOME
  CHARACTER(LEN=10) :: RESP, PESQ, RESPOSTA
  INTEGER :: I
  LOGICAL :: ACHA

  WRITE(*,'(A)') 'PESQUISA SEQUENCIAL DE NOMES'
  WRITE(*,*)

  DO I = 1, 10
    WRITE(*, '(A,I2,A,$)') 'Entre o ', I, 'o. nome: '
    READ(*,'(A)') NOME(I)
  END DO

  RESP = 'SIM'
  DO WHILE (RESP == 'SIM')
    WRITE(*,*)
    WRITE(*, '(A,$)') 'Entre o nome a ser pesquisado: '
    READ(*,'(A)') PESQ
    I = 1
    ACHA = .FALSE.

    DO WHILE ((I <= 10) .AND. (ACHA .EQV. .FALSE.))
      IF (PESQ == NOME(I)) THEN
        ACHA = .TRUE.
      ELSE
        I = I + 1
      END IF
    END DO

    IF (ACHA .EQV. .TRUE.) THEN
      WRITE(*,*)
      WRITE(*,'(A,A,I0)') TRIM(PESQ), ' foi localizado na posicao ', I
    ELSE
      WRITE(*,*)
      WRITE(*,'(A,A)') TRIM(PESQ), ' nao foi localizado'
    END IF

    WRITE(*,*)
    DO
      WRITE(*, '(A,$)') 'Deseja continuar? (SIM/NAO): '
      READ(*,'(A)') RESPOSTA
      RESP = poeMaiusculo(RESPOSTA)
      IF ((RESP /= 'SIM') .AND. (RESP /= 'NAO')) THEN
        WRITE(*,'(A)') 'Informe apenas SIM ou NAO.'
        WRITE(*,*)
      ELSE
        EXIT
      END IF
    END DO
  END DO

  PRINT *
  WRITE(*, '(A,$)') 'Tecle <Enter> para encerrar... '
  READ(*,*)

CONTAINS

  FUNCTION poeMaiusculo(texto) RESULT(textoMaiusculo)
    CHARACTER(LEN=*), INTENT(IN) :: texto
    CHARACTER(LEN=LEN(texto)) :: textoMaiusculo
    INTEGER :: I

    textoMaiusculo = texto
    DO I = 1, LEN(texto)
      IF (texto(I:I) >= 'a' .AND. texto(I:I) <= 'z') THEN
        textoMaiusculo(I:I) = CHAR(ICHAR(texto(I:I)) - ICHAR('a') + ICHAR('A'))
      END IF
    END DO
  END FUNCTION poeMaiusculo

END PROGRAM c08ex05
