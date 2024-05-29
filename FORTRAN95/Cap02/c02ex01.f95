! c02ex01.f95

PROGRAM c02ex01

  IMPLICIT NONE

  ! Operadores binários
  PRINT *, 5 + 3       ! Saída: 8
  PRINT *, 10 - 4      ! Saída: 6
  PRINT *, 2 * 6       ! Saída: 12
  PRINT *, 10.0 / 3.0  ! Saída: 3.3333... (quociente real)
  PRINT *, 10 / 3      ! Saída: 3 (quociente inteiro)
  PRINT *, MOD(10,3)   ! Saída: 1 (resto da divisão)

  ! Operadores unários
  PRINT *, +5          ! Saída: 5 (mantém positivo)
  PRINT *, -8          ! Saída: -8 (inverte sinal)

  ! Exponenciação
  PRINT *, 2 ** 3      ! Saída: 8.0 (2 elevado a 3)

END PROGRAM c02ex01
