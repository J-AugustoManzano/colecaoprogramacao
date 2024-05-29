! c06ex01.f95

PROGRAM c06ex01
  IMPLICIT NONE

  REAL :: MD(8), SOMA, MEDIA
  INTEGER :: I

  SOMA = 0.0
  DO I = 1, 8
    WRITE(*,'(A,I0,A,$)') 'Entre a media do aluno ', I, ': '
    READ(*,*) MD(I)

    SOMA = SOMA + MD(I)
  END DO

  MEDIA = SOMA / 8.0

  WRITE(*,*)
  WRITE(*,'(A,F5.2)') 'Media geral: ', MEDIA

  WRITE(*,*)
  WRITE(*,'(A,$)') 'Tecle <Enter> para encerrar... '
  READ(*,*)

END PROGRAM c06ex01
