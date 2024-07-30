// c07ex03.groovy

class Main {
    static int A, B

    static void troca() {
        int X = A
        A = B
        B = X
    }

    static void main(String[] args) {
        Scanner scanner = new Scanner(System.in)

        print("Entre um valor para a variavel <A>: ")
        A = scanner.nextInt()
        scanner.nextLine()

        print("Entre um valor para a variavel <B>: ")
        B = scanner.nextInt()
        scanner.nextLine()

        troca()

        println()
        println("Variavel <A> com valor $A")
        println("Variavel <B> com valor $B")

        print("\nTecle <Enter> para encerrar... ")
        scanner.nextLine()
    }
}
