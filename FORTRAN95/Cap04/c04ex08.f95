! c04ex08.f95

PROGRAM c04ex08
  IMPLICIT NONE

  CHARACTER(1) :: Transp, transpAux

  WRITE(*,'(A)') 'Escolha o tipo de transporte:'
  WRITE(*,*)
  WRITE(*,'(A)') '[M] - Motocicleta'
  WRITE(*,'(A)') '[S] - Scooter'
  WRITE(*,*)

  WRITE(*,'(A,$)') '==> '
  READ(*,'(A)') transpAux
  WRITE(*,*)

  IF (transpAux >= 'a' .AND. transpAux <= 'z') THEN
    Transp = CHAR(ICHAR(transpAux) - 32)
  ELSE
    Transp = transpAux
  END IF

  IF (Transp == 'M' .OR. Transp == 'S') THEN
    WRITE(*,'(A)') 'Transporte valido.'
  ELSE
    WRITE(*,'(A)') 'Transporte invalido.'
  END IF

  WRITE(*,*)
  WRITE(*,'(A,$)') 'Tecle <Enter> para encerrar... '
  READ(*,*)

END PROGRAM c04ex08
