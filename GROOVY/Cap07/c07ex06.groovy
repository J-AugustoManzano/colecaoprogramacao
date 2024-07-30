// c07ex06.groovy

class Main {
    static int fatorial(int N) {
        int fat = 1
        for (int i = 1; i <= N; i++) {
            fat *= i
        }
        return fat
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
