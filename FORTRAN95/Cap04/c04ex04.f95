! c04ex04.f95

PROGRAM c04ex04
  IMPLICIT NONE

  REAL :: N1, N2, N3, N4, NE, MD1, MD2

  WRITE(*,'(A,$)') 'Entre a 1a. nota .......: '
  READ(*,*) N1

  WRITE(*,'(A,$)') 'Entre a 2a. nota .......: '
  READ(*,*) N2

  WRITE(*,'(A,$)') 'Entre a 3a. nota .......: '
  READ(*,*) N3

  WRITE(*,'(A,$)') 'Entre a 4a. nota .......: '
  READ(*,*) N4

  WRITE(*,*)

  MD1 = (N1 + N2 + N3 + N4) / 4

  IF (MD1 >= 7) THEN
    WRITE(*,'(A)') 'Aprovado'
    WRITE(*,'(A,F0.2)') 'Media: ', MD1
  ELSE
    WRITE(*,'(A,$)') 'Entre a nota de exame ..: '
    READ(*,*) NE

    WRITE(*,*)

    MD2 = (MD1 + NE) / 2

    IF (MD2 >= 5) THEN
      WRITE(*,'(A)') 'Aprovado em exame'
    ELSE
      WRITE(*,'(A)') 'Reprovado'
    END IF

    WRITE(*,'(A,F0.2)') 'Media: ', MD2
  END IF

  WRITE(*,*)
  WRITE(*,'(A,$)') 'Tecle <Enter> para encerrar... '
  READ(*,*)

END PROGRAM c04ex04
