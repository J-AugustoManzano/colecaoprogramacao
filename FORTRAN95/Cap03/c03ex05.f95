! c03ex05.f95

PROGRAM c03ex05
  IMPLICIT NONE

  CHARACTER(len=50) :: NOME

  WRITE(*,'(A,$)') 'Entre seu nome: '
  READ(*,'(A)') NOME

  WRITE(*,'(A,A,$)') 'Ola, ', TRIM(NOME)
  WRITE(*,'(A)') '! Bem-vindo ao estudo de Fortran-95.'

  WRITE(*,*)
  WRITE(*,'(A,$)') 'Tecle <Enter> para encerrar... '
  READ(*,*)

END PROGRAM c03ex05
