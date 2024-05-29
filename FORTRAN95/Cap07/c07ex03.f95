! c07ex03.f95

PROGRAM c07ex03
  IMPLICIT NONE

  INTEGER :: A, B

  WRITE(*,'(A,$)') 'Entre um valor para a variavel <A>: '
  READ(*,*) A

  WRITE(*,'(A,$)') 'Entre um valor para a variavel <B>: '
  READ(*,*) B

  CALL TROCA

  WRITE(*,*)
  WRITE(*,'(A,I0)') 'Variavel <A> com valor ', A
  WRITE(*,'(A,I0)') 'Variavel <B> com valor ', B

  WRITE(*,*)
  WRITE(*,'(A,$)') 'Tecle <Enter> para encerrar... '
  READ(*,*)

CONTAINS

  SUBROUTINE TROCA
    IMPLICIT NONE

    INTEGER :: X

    X = A
    A = B
    B = X

  END SUBROUTINE TROCA

END PROGRAM c07ex03
