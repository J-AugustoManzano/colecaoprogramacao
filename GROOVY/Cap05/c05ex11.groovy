// c05ex11.groovy

class Main {
    static void main(String[] args) {
        int I, N, R
        Scanner entrada = new Scanner(System.in)

        for (I = 1; I <= 5; I++) {
            print "Entre um valor numerico: "
            N = entrada.nextInt()
            entrada.nextLine()

            R = N * 3

            println "Resultado = $R\n"
        }

        print "\nTecle <Enter> para encerrar... "
        entrada.nextLine()
    }
}
