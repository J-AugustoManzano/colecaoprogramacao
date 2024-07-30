// c06ex01.groovy

class Main {
    static void main(String[] args) {
        double[] MD = new double[8]
        double SOMA = 0.0, MEDIA
        Scanner entrada = new Scanner(System.in)

        for (int I = 0; I <= 7; I++) {
            printf "Entre a media do aluno %d: ", I + 1
            MD[I] = entrada.nextDouble()
            entrada.nextLine()
            SOMA += MD[I]
        }

        MEDIA = SOMA / 8

        println()
        printf "Media geral: %.2f\n", MEDIA

        print "\nTecle <Enter> para encerrar... "
        entrada.nextLine()
    }
}
