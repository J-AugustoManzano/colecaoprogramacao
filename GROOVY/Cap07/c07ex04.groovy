// c07ex04.groovy

class Main {
    static void fatorial(int N) {
        int fat = 1
        for (int i = 1; i <= N; i++) {
            fat *= i
        }
        println("Fatorial = $fat")
    }

    static int limite

    static void main(String[] args) {
        Scanner scanner = new Scanner(System.in)

        print("Qual fatorial: ")
        limite = scanner.nextInt()
        scanner.nextLine()

        fatorial(limite)

        print("\nTecle <Enter> para encerrar... ")
        scanner.nextLine()
    }
}
