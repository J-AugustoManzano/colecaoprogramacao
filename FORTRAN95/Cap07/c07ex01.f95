! c07ex01.f95

PROGRAM c07ex01
  IMPLICIT NONE

  INTEGER :: OPCAO

  DO
    WRITE(*,'(A)') 'CALCULADORA - V1'
    WRITE(*,*)
    WRITE(*,'(A)') '[1] - Adicao'
    WRITE(*,'(A)') '[2] - Subtracao'
    WRITE(*,'(A)') '[3] - Multiplicacao'
    WRITE(*,'(A)') '[4] - Divisao'
    WRITE(*,'(A)') '[5] - Fim de Programa'
    WRITE(*,*)
    WRITE(*,'(A,$)') 'Escolha uma opcao: '
    READ(*,*) OPCAO
    IF (OPCAO /= 5) THEN
      SELECT CASE (OPCAO)
      CASE (1)
        CALL ROTSOMA
      CASE (2)
        CALL ROTSUBTRACAO
      CASE (3)
        CALL ROTMULTIPLICACAO
      CASE (4)
        CALL ROTDIVISAO
      CASE DEFAULT
        WRITE(*,*)
        WRITE(*,'(A)') 'Opcao invalida - Tente novamente'
        WRITE(*,*)
      END SELECT
    ELSE
      EXIT
    END IF
  END DO

CONTAINS

  SUBROUTINE ROTSOMA
    IMPLICIT NONE

    REAL :: A1, B1, R1
    WRITE(*,*)
    WRITE(*,'(A)') 'Rotina de Adicao'
    WRITE(*,*)
    WRITE(*,'(A,$)') 'Entre o 1o. valor: '
    READ(*,*) A1
    WRITE(*,'(A,$)') 'Entre o 2o. valor: '
    READ(*,*) B1
    WRITE(*,*)
    R1 = A1 + B1
    WRITE(*,'(A,F0.2)') 'O resultado da operacao equivale a: ', R1
    WRITE(*,*)

  END SUBROUTINE ROTSOMA

  SUBROUTINE ROTSUBTRACAO
    IMPLICIT NONE

    REAL :: A2, B2, R2
    WRITE(*,*)
    WRITE(*,'(A)') 'Rotina de Subtracao'
    WRITE(*,*)
    WRITE(*,'(A,$)') 'Entre o 1o. valor: '
    READ(*,*) A2
    WRITE(*,'(A,$)') 'Entre o 2o. valor: '
    READ(*,*) B2
    WRITE(*,*)
    R2 = A2 - B2
    WRITE(*,'(A,F0.2)') 'O resultado da operacao equivale a: ', R2
    WRITE(*,*)

  END SUBROUTINE ROTSUBTRACAO

  SUBROUTINE ROTMULTIPLICACAO
    IMPLICIT NONE

    REAL :: A3, B3, R3
    WRITE(*,*)
    WRITE(*,'(A)') 'Rotina de Multiplicacao'
    WRITE(*,*)
    WRITE(*,'(A,$)') 'Entre o 1o. valor: '
    READ(*,*) A3
    WRITE(*,'(A,$)') 'Entre o 2o. valor: '
    READ(*,*) B3
    WRITE(*,*)
    R3 = A3 * B3
    WRITE(*,'(A,F0.2)') 'O resultado da operacao equivale a: ', R3
    WRITE(*,*)

  END SUBROUTINE ROTMULTIPLICACAO

  SUBROUTINE ROTDIVISAO
    IMPLICIT NONE

    REAL :: A4, B4, R4
    WRITE(*,*)
    WRITE(*,'(A)') 'Rotina de Divisao'
    WRITE(*,*)
    WRITE(*,'(A,$)') 'Entre o 1o. valor: '
    READ(*,*) A4
    WRITE(*,'(A,$)') 'Entre o 2o. valor: '
    READ(*,*) B4
    WRITE(*,*)
    IF (B4 == 0) THEN
      WRITE(*,'(A)') 'O resultado da operacao equivale a: ERRO'
    ELSE
      R4 = A4 / B4
      WRITE(*,'(A,F0.2)') 'O resultado da operacao equivale a: ', R4
    END IF
    WRITE(*,*)

  END SUBROUTINE ROTDIVISAO

END PROGRAM c07ex01
