! c08ex06.f95

PROGRAM c08ex06

  IMPLICIT NONE

  INTEGER, DIMENSION(1:10) :: numero
  INTEGER :: i, j, x, pesq, comeco, final, meio
  LOGICAL :: acha
  CHARACTER(LEN=10) :: resp, resposta

  WRITE(*,'(A)') 'PESQUISA BINARIA DE NUMEROS'
  WRITE(*,*)

  DO i = 1, 10
    WRITE(*,'(A,I2,A,$)') 'Entre o ', i, 'o. numero: '
    READ(*,*) numero(i)
  END DO

  DO i = 1, 9
    DO j = i + 1, 10
      IF (numero(i) > numero(j)) THEN
        x = numero(i)
        numero(i) = numero(j)
        numero(j) = x
      END IF
    END DO
  END DO

  resp = 'SIM'
  DO WHILE (resp == 'SIM')
    WRITE(*,*)
    WRITE(*,'(A,$)') 'Entre o numero a ser pesquisado: '
    READ(*,*) pesq

    comeco = 1
    final = 10
    acha = .FALSE.

    DO WHILE ((comeco <= final) .AND. (acha .EQV. .FALSE.))
      meio = (comeco + final) / 2
      IF (pesq == numero(meio)) THEN
        acha = .TRUE.
      ELSE IF (pesq < numero(meio)) THEN
        final = meio - 1
      ELSE
        comeco = meio + 1
      END IF
    END DO

    IF (acha .EQV. .TRUE.) THEN
      WRITE(*,*)
      WRITE(*,'(I0,A,I0)') pesq, ' foi localizado na posicao ', meio
    ELSE
      WRITE(*,*)
      WRITE(*,'(I0,A)') pesq, ' nao foi localizado'
    END IF

    WRITE(*,*)
    DO
      WRITE(*,'(A,$)') 'Deseja continuar? (SIM/NAO): '
      READ(*,'(A)') resposta
      resp = poeMaiusculo(resposta)
      IF ((resp /= 'SIM') .AND. (resp /= 'NAO')) THEN
        WRITE(*,'(A)') 'Informe apenas SIM ou NAO.'
        WRITE(*,*)
      ELSE
        EXIT
      END IF
    END DO
  END DO

  WRITE(*,*)
  WRITE(*,'(A,$)') 'Tecle <Enter> para encerrar... '
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

END PROGRAM c08ex06
