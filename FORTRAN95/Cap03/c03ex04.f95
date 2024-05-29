! c03ex04.f95

PROGRAM c03ex04
  IMPLICIT NONE

  REAL :: HT, VH, PD, SB, TD, SL

  WRITE(*,'(A,$)') 'Entre quantidade de horas trabalhadas ..: '
  READ(*,*) HT

  WRITE(*,'(A,$)') 'Entre valor do salario-hora ............: '
  READ(*,*) VH

  WRITE(*,'(A,$)') 'Entre valor do percentual de desconto ..: '
  READ(*,*) PD

  SB = HT * VH
  TD = (PD / 100.0) * SB
  SL = SB - TD

  WRITE(*,*)
  WRITE(*,'(A,F8.2)') 'Salario Bruto ....: ', SB
  WRITE(*,'(A,F8.2)') 'Salario Liquido ..: ', SL

  WRITE(*,*)
  WRITE(*,'(A,$)') 'Tecle <Enter> para encerrar... '
  READ(*,*)

END PROGRAM c03ex04
