! c08ex08.f90

PROGRAM c08ex08
  IMPLICIT NONE

  INTEGER, PARAMETER :: FIM = 10
  INTEGER :: MATRIZ(FIM)
  INTEGER :: INICIO
  INTEGER :: OPCAO

  CALL Criar()
  OPCAO = 0

  DO WHILE (OPCAO /= 6)
    WRITE(*, '(A)') 'PROGRAMA: FILA'
    PRINT *
    WRITE(*, '(A)') '[1] - Entrada'
    WRITE(*, '(A)') '[2] - Saida'
    WRITE(*, '(A)') '[3] - Apresentar 1o. da fila'
    WRITE(*, '(A)') '[4] - Apresentar a fila'
    WRITE(*, '(A)') '[5] - Nova fila'
    WRITE(*, '(A)') '[6] - Sair'
    PRINT *
    WRITE(*, '(A,$)') 'Escolha uma opcao: '
    READ *, OPCAO
    PRINT *

    IF (OPCAO /= 6) THEN
      SELECT CASE (OPCAO)
      CASE (1)
        CALL Entrada()
      CASE (2)
        CALL Saida()
      CASE (3)
        CALL Atual()
      CASE (4)
        CALL Exibicao()
      CASE (5)
        CALL Criar()
      CASE DEFAULT
        PRINT *, 'Opcao invalida. Tente novamente.'
        PRINT *
      END SELECT
    END IF
  END DO

CONTAINS

  LOGICAL FUNCTION Vazia()
    IF (INICIO == 0) THEN
      Vazia = .TRUE.
    ELSE
      Vazia = .FALSE.
    END IF
  END FUNCTION Vazia

  LOGICAL FUNCTION Cheia()
    IF (INICIO == FIM) THEN
      Cheia = .TRUE.
    ELSE
      Cheia = .FALSE.
    END IF
  END FUNCTION Cheia

  LOGICAL FUNCTION Adicionar(ELEMENTO)
    INTEGER :: ELEMENTO
    IF (Cheia()) THEN
      Adicionar = .FALSE.
    ELSE
      INICIO = INICIO + 1
      MATRIZ(INICIO) = ELEMENTO
      Adicionar = .TRUE.
    END IF
  END FUNCTION Adicionar

  LOGICAL FUNCTION Retirar(ELEMENTO)
    INTEGER :: ELEMENTO
    INTEGER :: I
    IF (Vazia()) THEN
      Retirar = .FALSE.
    ELSE
      ELEMENTO = MATRIZ(1)
      DO I = 1, INICIO - 1
        MATRIZ(I) = MATRIZ(I + 1)
      END DO
      INICIO = INICIO - 1
      Retirar = .TRUE.
    END IF
  END FUNCTION Retirar

  SUBROUTINE Entrada()
    INTEGER :: X
    WRITE(*, '(A,$)') 'Entre com um elemento numerico: '
    READ *, X
    PRINT *
    IF (Adicionar(X)) THEN
      WRITE(*, '(A,I0,A,I0,A)') 'Elemento ', X, ' inserido na posicao ', INICIO, '.'
    ELSE
      WRITE(*, '(A,I0,A)') 'Impossivel adicionar ', X, ' - fila lotada.'
    END IF
    PRINT *
  END SUBROUTINE Entrada

  SUBROUTINE Saida()
    INTEGER :: ELEMENTO
    IF (Retirar(ELEMENTO)) THEN
      WRITE(*, '(A,I0,A)') 'Elemento ', ELEMENTO, ' retirado do inicio da fila.'
    ELSE
      WRITE(*, '(A)') 'Impossivel retirar elemento - fila vazia.'
    END IF
    PRINT *
  END SUBROUTINE Saida

  SUBROUTINE Atual()
    IF (.NOT. Vazia()) THEN
      WRITE(*, '(I0,A)') MATRIZ(1), ' - primeiro elemento da fila.'
    ELSE
      WRITE(*, '(A)') 'Impossivel apresentar - fila vazia.'
    END IF
    PRINT *
  END SUBROUTINE Atual

  SUBROUTINE Exibicao()
    INTEGER :: I
    IF (.NOT. Vazia()) THEN
      DO I = 1, INICIO
        WRITE(*, '(A,I2,A,I0)') 'Posicao: ', I, ' = ', MATRIZ(I)
      END DO
    ELSE
      WRITE(*, '(A)') 'Impossivel apresentar - fila vazia.'
    END IF
    PRINT *
  END SUBROUTINE Exibicao

  SUBROUTINE Criar()
    INTEGER :: I
    INICIO = 0
    DO I = 1, FIM
      MATRIZ(I) = 0
    END DO
  END SUBROUTINE Criar

END PROGRAM c08ex08
