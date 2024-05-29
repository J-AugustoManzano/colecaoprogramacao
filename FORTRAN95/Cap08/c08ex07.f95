! c08ex07.f90

PROGRAM c08ex07
  IMPLICIT NONE

  INTEGER, PARAMETER :: LIMITE = 10
  
  INTEGER :: MATRIZ(LIMITE)
  INTEGER :: TOPO
  INTEGER :: Opcao

  CALL Criar()
  Opcao = 0

  DO WHILE (Opcao /= 5)
    WRITE(*,'(A)') 'PROGRAMA: PILHA'
    PRINT *
    WRITE(*,'(A)') '[1] - Empilhar'
    WRITE(*,'(A)') '[2] - Desempilhar'
    WRITE(*,'(A)') '[3] - Mostrar'
    WRITE(*,'(A)') '[4] - Criar pilha'
    WRITE(*,'(A)') '[5] - Sair'
    PRINT *
    WRITE(*,'(A,$)') 'Escolha uma Opcao: '
    READ *, Opcao
    PRINT *

    IF (Opcao /= 5) THEN
      SELECT CASE (Opcao)
      CASE (1)
        CALL Empilhar()
      CASE (2)
        CALL Desempilhar()
      CASE (3)
        CALL Mostrar()
      CASE (4)
        CALL Criar()
      CASE DEFAULT
        PRINT *, 'Opcao invalida. Tente novamente.'
        PRINT *
      END SELECT
    END IF
  END DO

CONTAINS

  LOGICAL FUNCTION Vazia()
    IF (TOPO == 0) THEN
      Vazia = .TRUE.
    ELSE
      Vazia = .FALSE.
    END IF
  END FUNCTION Vazia

  LOGICAL FUNCTION Cheia()
    IF (TOPO == LIMITE) THEN
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
      TOPO = TOPO + 1
      MATRIZ(TOPO) = ELEMENTO
      Adicionar = .TRUE.
    END IF
  END FUNCTION Adicionar

  LOGICAL FUNCTION Retirar(ELEMENTO)
    INTEGER :: ELEMENTO
    IF (Vazia()) THEN
      Retirar = .FALSE.
    ELSE
      ELEMENTO = MATRIZ(TOPO)
      MATRIZ(TOPO) = 0
      TOPO = TOPO - 1
      Retirar = .TRUE.
    END IF
  END FUNCTION Retirar

  SUBROUTINE Empilhar()
    INTEGER :: X
    WRITE(*,'(A,$)') 'Entre com um elemento numerico: '
    READ *, X
    PRINT *
    IF (Adicionar(X)) THEN
      WRITE(*,'(A,I0,A,I0,A)') 'Elemento ', X, ' inserido na posicao ', TOPO, '.'
    ELSE
      WRITE(*,'(A,I0,A)') 'Impossivel adicionar ', X, ' - pilha cheia.'
    END IF
    PRINT *
  END SUBROUTINE Empilhar

  SUBROUTINE Desempilhar()
    INTEGER :: ELEMENTO
    IF (Retirar(ELEMENTO)) THEN
      WRITE(*,'(A,I0,A)') 'Elemento ', ELEMENTO, ' retirado do topo da pilha.'
    ELSE
      WRITE(*,'(A)') 'Impossivel retirar elemento - pilha vazia.'
    END IF
    PRINT *
  END SUBROUTINE Desempilhar

  SUBROUTINE Mostrar()
    INTEGER :: I
    IF (.NOT. Vazia()) THEN
      DO I = TOPO, 1, -1
        WRITE(*,'(A,I2,A,I0)') 'Posicao: ', I, ' = ', MATRIZ(I)
      END DO
    ELSE
      WRITE(*,'(A)') 'Impossivel apresentar - pilha vazia.'
    END IF
    PRINT *
  END SUBROUTINE Mostrar

  SUBROUTINE Criar()
    INTEGER :: I
    TOPO = 0
    DO I = 1, LIMITE
      MATRIZ(I) = 0
    END DO
  END SUBROUTINE Criar

END PROGRAM c08ex07
