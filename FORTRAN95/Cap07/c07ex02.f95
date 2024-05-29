! c07ex02.f95

PROGRAM c07ex02
  IMPLICIT NONE

  INTEGER :: A, B, X

  WRITE(*,'(A,$)') 'Entre um valor para a variavel <A>: '
  READ(*,*) A

  WRITE(*,'(A,$)') 'Entre um valor para a variavel <B>: '
  READ(*,*) B

  X = A
  A = B
  B = X

  WRITE(*,*)

  WRITE(*,'(A,I0)') 'Variavel <A> com valor ', A
  WRITE(*,'(A,I0)') 'Variavel <B> com valor ', B

  WRITE(*,*)
  WRITE(*,'(A,$)') 'Tecle <Enter> para encerrar... '
  READ(*,*)

END PROGRAM c07ex02
