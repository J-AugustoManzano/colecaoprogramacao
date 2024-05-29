! c04ex02.f95

PROGRAM c04ex02
  IMPLICIT NONE

  INTEGER :: A, B, X

  WRITE(*,'(A,$)') 'Entre o 1o. valor numerico: '
  READ(*,*) A

  WRITE(*,'(A,$)') 'Entre o 2o. valor numerico: '
  READ(*,*) B

  IF (A > B) THEN
    X = A
    A = B
    B = X
  END IF

  WRITE(*,'(A,I0,A,I0,A)') 'Os valores sao: ', A, ' e ', B, '.'

  WRITE(*,*)
  WRITE(*,'(A,$)') 'Tecle <Enter> para encerrar... '
  READ(*,*)

END PROGRAM c04ex02
