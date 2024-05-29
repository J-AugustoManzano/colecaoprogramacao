! c05ex02.f95

PROGRAM c05ex02
  IMPLICIT NONE

  CHARACTER(1) :: RESP
  INTEGER :: N, R

  RESP = 'S'
  DO WHILE (Maiusculo(RESP) == 'S')
    WRITE(*,'(A,$)') 'Entre um valor numerico: '
    READ(*,*) N

    R = N * 3

    WRITE(*,'(A,I0)') 'Resultado = ', R
    WRITE(*,*)

    WRITE(*,'(A,$)') 'Deseja continuar? (S/N): '
    READ(*,'(A)') RESP
    WRITE(*,*)
  END DO

  WRITE(*,*)
  WRITE(*,'(A,$)') 'Tecle <Enter> para encerrar... '
  READ(*,*)

CONTAINS

  FUNCTION Maiusculo(textoEntra) RESULT(textoSai)
  ! Adaptado de www.star.le.ac.uk/~cgp/fortran.html
  ! Autor: Clive Page 25/05/2012
  ! github.com/ufs-community/UFS_UTILS/issues/303 26/05/2024

    IMPLICIT NONE

    CHARACTER(LEN=*), INTENT(IN) :: textoEntra
    CHARACTER(LEN=LEN(textoEntra)) :: textoSai
    INTEGER :: I, J

    DO I = 1, LEN(textoEntra)
      J = IACHAR(textoEntra(I:I))
      IF (J >= IACHAR("A") .AND. J <= IACHAR("Z") ) THEN
        textoSai(I:I) = ACHAR(J)
      ELSE IF (J >= IACHAR("a") .AND. J <= IACHAR("z") ) THEN
        textoSai(I:I) = ACHAR(J - 32)
      ELSE
        textoSai(I:I) = textoEntra(I:I)
      END IF
    END DO

  END FUNCTION Maiusculo

END PROGRAM c05ex02
