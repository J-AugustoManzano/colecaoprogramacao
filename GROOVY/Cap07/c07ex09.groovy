// c07ex09.groovy

class Main {
    static int fatorialBase(int N, int P) {
        if (N == 0) {
            return P
        } else {
            return fatorialBase(N - 1, N * P)
        }
    }

    static int fatorial(int N) {
        return fatorialBase(N, 1)
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
