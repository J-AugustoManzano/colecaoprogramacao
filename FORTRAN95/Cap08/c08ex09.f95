! c08ex09.f90

PROGRAM c08ex09
  IMPLICIT NONE

  INTEGER :: I

  DO I = 0, 14
    WRITE(*, '(I2, A, I0)') I, ' - ', Fibonacci(I)
  END DO
  
  WRITE (*,*)
  WRITE (*, '(A,$)') 'Tecle <Enter> para encerrar... '
  READ(*,*)

CONTAINS

  RECURSIVE FUNCTION Fibonacci(N) RESULT(Fib)
    INTEGER, INTENT(IN) :: N
    INTEGER :: Fib

    IF (N == 0) THEN
      Fib = 0
    ELSE IF (N == 1) THEN
      Fib = 1
    ELSE
      Fib = Fibonacci(N - 1) + Fibonacci(N - 2)
    END IF
  END FUNCTION Fibonacci

END PROGRAM c08ex09
