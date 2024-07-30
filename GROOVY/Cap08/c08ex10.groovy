// c08ex10.groovy

class Main {
    static int FibonacciBase(int N, int X, int Y) {
        if (N == 0)
            return X
        else if (N == 1)
            return Y
        else
            return FibonacciBase(N - 1, Y, X + Y)
    }

    static int Fibonacci(int N) {
        return FibonacciBase(N, 0, 1)
    }

    static void main(String[] args) {
        Scanner entrada = new Scanner(System.in)

        for (int I = 0; I <= 14; I++)
            println "$I - ${Fibonacci(I)}"

        print "\nPressione <Enter> para sair... "
        entrada.nextLine()
    }
}
