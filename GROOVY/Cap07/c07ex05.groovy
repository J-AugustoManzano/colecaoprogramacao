// c07ex05.groovy

class Main {
    static void fatorial(int N, int[] fat) {
        fat[0] = 1
        for (int i = 1; i <= N; i++) {
            fat[0] *= i
        }
    }

    static void main(String[] args) {
        Scanner scanner = new Scanner(System.in)
        int limite
        int[] resp = new int[1]

        print("Qual fatorial: ")
        limite = scanner.nextInt()
        scanner.nextLine()

        fatorial(limite, resp)

        println("Fatorial = ${resp[0]}")

        print("\nTecle <Enter> para encerrar... ")
        scanner.nextLine()
    }
}
