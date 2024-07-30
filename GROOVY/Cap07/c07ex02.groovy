// c07ex02.groovy

class Main {
    static void main(String[] args) {
        int A, B, X
        Scanner scanner = new Scanner(System.in)

        print("Entre um valor para a variavel <A>: ")
        A = scanner.nextInt()
        scanner.nextLine()

        print("Entre um valor para a variavel <B>: ")
        B = scanner.nextInt()
        scanner.nextLine()

        X = A
        A = B
        B = X

        println()
        println("Variavel <A> com valor $A")
        println("Variavel <B> com valor $B")

        print("\nTecle <Enter> para encerrar... ")
        scanner.nextLine()
    }
}
