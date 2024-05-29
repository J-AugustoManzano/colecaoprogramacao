! c06ex02.f95

PROGRAM c06ex02
  IMPLICIT NONE

  REAL :: NOTAS(8,4)
  INTEGER :: I, J

  DO I = 1, 8
    WRITE(*,'(A,I0,A)') 'Entre as notas do aluno ', I, ':'
    DO J = 1, 4
      WRITE(*,'(A,I0,A,$)') 'Nota ', J, ': '
      READ(*,*) NOTAS(I, J)
    END DO
    WRITE(*,*)
  END DO

  WRITE(*,*)
  WRITE(*,'(A)') 'RELATORIO DE NOTAS'
  WRITE(*,*)
  WRITE(*,'(A)') 'Aluno Nota1 Nota2 Nota3 Nota4'
  WRITE(*,'(A)') '----- ----- ----- ----- -----'

  DO I = 1, 8
    WRITE(*,'(I5,$)') I
    DO J = 1, 4
      WRITE(*,'(F6.1,$)') NOTAS(I, J)
    END DO
    WRITE(*,*)
  END DO

  WRITE(*,*)
  WRITE(*,'(A,$)') 'Tecle <Enter> para encerrar... '
  READ(*,*)

END PROGRAM c06ex02
