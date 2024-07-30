// c08ex03.groovy

class Main {
    static void main(String[] args) {
        int[] numeros = new int[5]
        int i, j, x
        Scanner scanner = new Scanner(System.in)

        println("CLASSIFICACAO DE NUMEROS (CRESCENTE)\n")

        for (i = 0; i <= 4; i++) {
            print "${i + 1}o. numero: "
            numeros[i] = scanner.nextInt()
            scanner.nextLine()
        }

        for (i = 0; i <= 3; i++)
            for (j = i + 1; j <= 4; j++)
                if (numeros[i] > numeros[j]) {
                    x = numeros[i]
                    numeros[i] = numeros[j]
                    numeros[j] = x
                }

        println()
        for (i = 0; i <= 4; i++)
            println "${i + 1}o. numero: ${numeros[i]}"

        print "\nTecle <Enter> para encerrar... "
        scanner.nextLine()
    }
}
