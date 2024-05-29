! c03ex02.f95

PROGRAM c03ex02
  IMPLICIT NONE

  REAL(KIND=8), PARAMETER :: PI = 4.0_8 * ATAN(1.0_8)

  REAL :: R, A

  WRITE(*,'(A,$)') 'Entre valor do raio: '
  READ(*,*) R

  A = PI * R**2

  WRITE(*,'(A,F0.2)') 'Resultado = ', A

  WRITE(*,*)
  WRITE(*,'(A,$)') 'Tecle <Enter> para encerrar... '
  READ(*,*)

END PROGRAM c03ex02
