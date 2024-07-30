// c08ex04.groovy

class Main {
    static void main(String[] args) {
        String[] nomes = new String[5]
        String x
        Scanner scanner = new Scanner(System.in)

        int i, j

        println "CLASSIFICACAO DE NOMES (DECRESCENTE)\n"

        for (i = 0; i <= 4; i++) {
            print "${i + 1}o. nome: "
            nomes[i] = scanner.nextLine()
        }

        for (i = 0; i <= 3; i++)
            for (j = i + 1; j <= 4; j++)
                if (nomes[i].compareToIgnoreCase(nomes[j]) > 0) {
                    x = nomes[i]
                    nomes[i] = nomes[j]
                    nomes[j] = x
                }

        println()
        for (i = 0; i <= 4; i++)
            println "${i + 1}º nome: ${nomes[i]}"

        print "\nTecle <Enter> para encerrar... "
        scanner.nextLine()
    }
}
