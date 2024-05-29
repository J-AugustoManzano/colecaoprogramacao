! c03ex06.f95

PROGRAM c02ex06
  IMPLICIT NONE

  CHARACTER(len=10) :: palavra = "COMPUTADOR"

  WRITE(*,'(A,A)') 'Palavra ........: ', palavra
  WRITE(*,*)
  WRITE(*,'(A,A)') 'Lado esquerdo ..: ', palavra(1:3)
  WRITE(*,'(A,A)') 'Centro .........: ', palavra(4:7)
  WRITE(*,'(A,A)') 'Lado direito ...: ', palavra(8:10)
  WRITE(*,'(A,A)') 'Reverso ........: ', inverte(palavra)
  WRITE(*,'(A,A)') 'Copias .........: ', REPEAT(palavra, 3)
  WRITE(*,'(A,A)') 'Nova palavra ...: ', trocar(palavra, 'A', 'O')

  WRITE(*,*)
  WRITE(*,'(A,$)') 'Tecle <Enter> para encerrar... '
  READ(*,*)

CONTAINS

  FUNCTION trocar(texto, letraAntiga, letraNova) RESULT(novoTexto)
    CHARACTER(len=*), INTENT(IN) :: texto
    CHARACTER, INTENT(IN) :: letraAntiga, letraNova
    CHARACTER(len=LEN(texto)) :: novoTexto
    INTEGER :: i

    novoTexto = texto
    DO i = 1, LEN(texto)
      IF (texto(i:i) == letraAntiga) novoTexto(i:i) = letraNova
    END DO
  END FUNCTION trocar

  FUNCTION inverte(texto) RESULT(textoInvertido)
    CHARACTER(len=*), INTENT(IN) :: texto
    CHARACTER(len=LEN(texto)) :: textoInvertido
    INTEGER :: i

    DO i = 1, LEN(texto)
      textoInvertido(i:i) = texto(LEN(texto) - i + 1:LEN(texto) - i + 1)
    END DO
  END FUNCTION inverte

END PROGRAM c02ex06
