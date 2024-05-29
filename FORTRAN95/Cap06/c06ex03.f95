! c06ex03.f95

PROGRAM c06ex03
  IMPLICIT NONE

  TYPE TAluno
    CHARACTER(LEN=30) :: Nome
    CHARACTER(LEN=1) :: Turma
    INTEGER :: Sala
    REAL :: Notas(1:4)
  END TYPE TAluno

  TYPE(TAluno), DIMENSION(1:8) :: ALUNO
  INTEGER :: I, J

  WRITE(*, '(A)') 'Escola de Computacao XPTO'
  WRITE(*, '(A)') 'Cadastro Escolar de Aluno'
  WRITE(*, *)

  DO I = 1, 8
    WRITE(*, '(A, I1)') 'Aluno: ', I
    WRITE(*, *)

    WRITE(*, '(A,$)') 'Nome ..............: '
    READ(*, '(A,$)') ALUNO(I)%Nome

    WRITE(*, '(A,$)') 'Turma .............: '
    READ(*,'(A)') ALUNO(I)%Turma

    WRITE(*, '(A,$)') 'Sala ..............: '
    READ(*,*) ALUNO(I)%Sala
    WRITE(*,*)

    DO J = 1, 4
        WRITE(*, '(A, I1, A,$)') 'Entre a ', J, 'a. nota ..: '
        READ(*,*) ALUNO(I)%Notas(J)
    END DO

    WRITE(*,*)
  END DO

  WRITE(*, '(A)') 'Escola de Computacao XPTO'
  WRITE(*, '(A)') 'Cadastro Escolar de Aluno'
  WRITE(*, *)
  WRITE(*, '(A)') 'DADOS DOS ALUNOS'
  WRITE(*, *)
  WRITE(*, '(A,$)') 'Aluno '
  WRITE(*, '(A,$)') 'Nome                           '
  WRITE(*, '(A,$)') 'Sala '
  WRITE(*, '(A,$)') 'Turma '
  WRITE(*, '(A,$)') 'Nota1 '
  WRITE(*, '(A,$)') 'Nota2 '
  WRITE(*, '(A,$)') 'Nota3 '
  WRITE(*, '(A)') 'Nota4 '
  WRITE(*, '(A,$)') '----- '
  WRITE(*, '(A,$)') '------------------------------ '
  WRITE(*, '(A,$)') '---- '
  WRITE(*, '(A,$)') '----- '
  WRITE(*, '(A,$)') '----- '
  WRITE(*, '(A,$)') '----- '
  WRITE(*, '(A,$)') '----- '
  WRITE(*, '(A)') '----- '
  WRITE(*, *)

  DO I = 1, 8
    WRITE(*, '(I5, 1X,$)', ADVANCE='NO') I
    WRITE(*, '(A30, 1X)',  ADVANCE='NO') ALUNO(I)%Nome
    WRITE(*, '(I4, 1X)',   ADVANCE='NO') ALUNO(I)%Sala
    WRITE(*, '(A5, 1X)',   ADVANCE='NO') ALUNO(I)%Turma
    DO J = 1, 4
      WRITE(*, '(F5.1, 1X)', ADVANCE='NO') ALUNO(I)%Notas(J)
    END DO
    WRITE(*, *)
  END DO
  
  WRITE(*, *)
  WRITE(*, '(A,$)') 'Tecle <Enter> para encerrar... '
  READ(*, *)

END PROGRAM c06ex03
