// c06ex04.groovy

class Main {
    static void main(String[] args) {
        int N
        List<String> A = new ArrayList<>()
        Scanner scanner = new Scanner(System.in)

        print("Entre a quantidade de elementos da matriz: ")
        N = Integer.parseInt(scanner.nextLine())
        scanner.nextLine()
        println()

        for (int I = 0; I <= N - 1; I++) {
            printf("Entre o %do. nome: ", I + 1)
            A.add(scanner.nextLine())
        }

        println()
        println("Foram fornecidos os nomes:")
        println()

        for (int I = 0; I <= N - 1; I++) {
            printf("Nome %d = %s\n", I + 1, A.get(I))
        }

        print("\nTecle <Enter> para encerrar... ")
        scanner.nextLine()
    }
}
