// c08ex09.groovy

class Main {
    static int Fibonacci(int N) {
        if (N == 0)
            return 0
        if (N == 1)
            return 1
        if (N >= 2)
            return Fibonacci(N - 1) + Fibonacci(N - 2)
        return 0 // Para evitar aviso de retorno implícito
    }

    static void main(String[] args) {
        Scanner entrada = new Scanner(System.in)
      
        for (int I = 0; I <= 14; I++)
            println "$I - ${Fibonacci(I)}"

        print "\nPressione <Enter> para sair... "
        entrada.nextLine()
    }
}
