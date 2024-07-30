// c03ex01.groovy

class Main {
    static void main(String[] args) {
        int A, B, X
        Scanner entrada = new Scanner(System.in)

        print "Entre o 1o. valor numerico inteiro: "
        A = entrada.nextInt()
        entrada.nextLine()

        print "Entre o 2o. valor numerico inteiro: "
        B = entrada.nextInt()
        entrada.nextLine()

        X = A + B

        println "Resultado = $X"

        print "\nTecle <Enter> para encerrar... "
        entrada.nextLine()
    }
}
