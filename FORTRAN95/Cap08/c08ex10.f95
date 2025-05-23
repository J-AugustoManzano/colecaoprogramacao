! c08ex10.f90

PROGRAM c08ex10
  IMPLICIT NONE

  INTEGER :: I

  DO I = 0, 14
    WRITE(*, '(I2, A, I0)') I, ' - ', Fibonacci(I)
  END DO

  WRITE (*,*)
  WRITE (*, '(A)') 'Tecle <Enter> para encerrar... '
  READ(*,*)

CONTAINS

  RECURSIVE FUNCTION FibonacciBase(N, X, Y) RESULT(Fib)
    INTEGER, INTENT(IN) :: N, X, Y
    INTEGER :: Fib

    IF (N == 0) THEN
      Fib = X
    END IF
    IF (N == 1) THEN
      Fib = Y
    END IF
    IF (N >= 2) THEN
      Fib = FibonacciBase(N - 1, Y, X + Y)
    END IF
  END FUNCTION FibonacciBase

  FUNCTION Fibonacci(N)
    INTEGER, INTENT(IN) :: N
    INTEGER :: Fibonacci

    Fibonacci = FibonacciBase(N, 0, 1)
  END FUNCTION Fibonacci

END PROGRAM c08ex10
