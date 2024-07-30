// c04ex03.groovy

class Main {
    static void main(String[] args) {
        int A, B, X, R
        Scanner entrada = new Scanner(System.in)

        print "Entre o 1o. valor numerico: "
        A = entrada.nextInt()
        entrada.nextLine()

        print "Entre o 2o. valor numerico: "
        B = entrada.nextInt()
        entrada.nextLine()

        X = A + B

        if (X >= 10)
            R = X + 5
        else
            R = X - 7

        println "Resultado = $R"

        print "\nTecle <Enter> para encerrar... "
        entrada.nextLine()
    }
}
