! c04ex09.f95

PROGRAM c04ex09
  IMPLICIT NONE

  INTEGER :: P1, P2

  WRITE(*,'(A)') 'Classificacao esportiva'
  WRITE(*,*)
  WRITE(*,'(A)') 'Entre ''1'' se atleta pontuou na 1a. prova'
  WRITE(*,'(A)') 'Entre ''1'' se atleta pontuou na 2a. prova'
  WRITE(*,'(A)') 'Qualquer outro valor se nao pontuou nas provas'
  WRITE(*,*)

  WRITE(*,'(A,$)') 'Prova 1: '
  READ(*,*) P1

  WRITE(*,'(A,$)') 'Prova 2: '
  READ(*,*) P2

  IF ((P1 == 1) .NEQV. (P2 == 1)) THEN
    WRITE(*,'(A)') 'Atleta participa da terceira prova.'
  ELSE
    WRITE(*,'(A)') 'Atleta nao participa da terceira prova.'
    IF ((P1 == 1) .AND. (P2 == 1)) THEN
      WRITE(*,'(A)') 'Classificado para a final.'
    ELSE
      WRITE(*,'(A)') 'Desclassificado da competicao.'
    END IF
  END IF

  WRITE(*,*)
  WRITE(*,'(A,$)') 'Tecle <Enter> para encerrar... '
  READ(*,*)

END PROGRAM c04ex09
