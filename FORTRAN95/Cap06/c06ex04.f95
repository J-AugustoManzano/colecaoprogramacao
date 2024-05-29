! c06ex04.f95

PROGRAM c06ex04
  IMPLICIT NONE

  CHARACTER(LEN=50), ALLOCATABLE :: A(:)
  INTEGER :: N, I

  WRITE(*,'(A,$)') 'Entre a quantidade de elementos da matriz: '
  READ(*,*) N

  WRITE(*,*)

  ALLOCATE(A(N))

  DO I = 1, N
    WRITE(*,'(A,I3,A,$)') 'Entre o ', I, 'o. nome: '
    READ(*,'(A)') A(I)
  END DO

  WRITE(*,*)
  WRITE(*,'(A)') 'Foram fornecidos os nomes:'
  WRITE(*,*)

  DO I = 1, N
    WRITE(*,'(A,I3,A,A)') 'Nome ', I, ' = ', A(I)
  END DO

  WRITE(*,*)
  WRITE(*,'(A,$)') 'Tecle <Enter> para encerrar... '
  READ(*,*)

END PROGRAM c06ex04
