! c04ex07.f95

PROGRAM c04ex07
  IMPLICIT NONE

  INTEGER :: Numero

  WRITE(*,'(A,$)') 'Entre um numero inteiro: '
  READ(*,*) Numero

  IF ((Numero >= 20) .AND. (Numero <= 90)) THEN
    WRITE(*,'(A)') 'O numero esta na faixa de 20 a 90.'
  ELSE
    WRITE(*,'(A)') 'O numero esta fora da faixa de 20 a 90.'
  END IF

  WRITE(*,*)
  WRITE(*,'(A,$)') 'Tecle <Enter> para encerrar... '
  READ(*,*)

END PROGRAM c04ex07
