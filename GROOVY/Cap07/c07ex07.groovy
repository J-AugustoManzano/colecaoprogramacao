// c07ex07.groovy

class Main {
    static boolean igual(int A, int B) {
        return A == B
    }

    static void main(String[] args) {
        Scanner scanner = new Scanner(System.in)
        int x, y

        print("Informe o 1o. valor: ")
        x = scanner.nextInt()
        scanner.nextLine()

        print("Informe o 2o. valor: ")
        y = scanner.nextInt()
        scanner.nextLine()

        if (igual(x, y)) {
            println("Valores sao iguais")
        } else {
            println("Valores sao diferentes")
        }

        print("\nTecle <Enter> para encerrar... ")
        scanner.nextLine()
    }
}
