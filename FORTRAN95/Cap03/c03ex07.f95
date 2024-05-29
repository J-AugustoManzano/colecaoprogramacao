! c03ex07.f95

PROGRAM c02ex07
  IMPLICIT NONE

  CHARACTER(len=42) :: frase
  CHARACTER(len=10), DIMENSION(4) :: palavras
  INTEGER :: i, pos

  frase = "Aprendendo Fortran com o Professor Manzano"

  WRITE(*,'(A,A)') 'Frase ......: ', frase
  WRITE(*,'(A)')   '             -------------------------------------------'
  WRITE(*,'(A)')   '             0000000001111111111222222222233333333333444'
  WRITE(*,'(A)')   '             0123456789012345678901234567890123456789012'
  WRITE(*,*)

  WRITE(*,'(A,I0,A)') 'Tamanho ....: ', LEN(frase), ' caracteres'
  WRITE(*,*)

  CALL split(frase, ' ', palavras)

  WRITE(*,'(A,A)') 'Palavra 1 ..............: ', TRIM(ADJUSTL(palavras(1)))
  WRITE(*,'(A,A)') 'Palavra 2 ..............: ', TRIM(ADJUSTL(palavras(2)))
  WRITE(*,'(A,A)') 'Palavra 3 ..............: ', TRIM(ADJUSTL(palavras(3)))
  WRITE(*,'(A,A)') 'Palavra 4 ..............: ', TRIM(ADJUSTL(palavras(4)))
  WRITE(*,*)

  WRITE(*,'(A,A)') 'Letra 1 da Palavra 1 ...: ', palavras(1)(1:1)
  WRITE(*,'(A,A)') 'Letra 2 da Palavra 1 ...: ', palavras(1)(2:2)
  WRITE(*,'(A,A)') 'Letra 3 da Palavra 1 ...: ', palavras(1)(3:3)
  WRITE(*,'(A,A)') 'Letra 4 da Palavra 1 ...: ', palavras(1)(4:4)
  WRITE(*,*)

  pos = INDEX(frase, 'PHP')
  WRITE(*,'(A,I0)') 'A palavra ''PHP'' na posicao: ', pos

  WRITE(*,*)
  WRITE(*,'(A,$)') 'Tecle <Enter> para encerrar... '
  READ(*,*)

CONTAINS

  SUBROUTINE split(texto, tamanho, palavra)
    CHARACTER(len=*), INTENT(IN) :: texto, tamanho
    CHARACTER(len=*), DIMENSION(:), INTENT(OUT) :: palavra
    INTEGER :: i, pos, n

    n = 1
    pos = 1
    DO i = 1, LEN(texto)
      IF (texto(i:i) == tamanho) THEN
        palavra(n) = TRIM(ADJUSTL(texto(pos:i-1)))
        n = n + 1
        pos = i + 1
      END IF
    END DO
    palavra(n) = TRIM(ADJUSTL(texto(pos:)))
  END SUBROUTINE split

END PROGRAM c02ex07
