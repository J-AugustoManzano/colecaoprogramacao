// c07ex08.groovy

class Main {
    static int fatorial(int N) {
        if (N == 0) {
            return 1
        } else {
            return N * fatorial(N - 1)
        }
    }

    static void main(String[] args) {
        Scanner scanner = new Scanner(System.in)
        int limite

        print("Qual fatorial: ")
        limite = scanner.nextInt()
        scanner.nextLine()

        println("Fatorial = ${fatorial(limite)}")

        print("\nTecle <Enter> para encerrar... ")
        scanner.nextLine()
    }
}
