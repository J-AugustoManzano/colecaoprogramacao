// c05ex03.groovy

class Main {
    static void main(String[] args) {
        int I, N, R
        Scanner entrada = new Scanner(System.in)

        I = 1
        while (!(I > 5)) {
            print "Entre um valor numerico: "
            N = entrada.nextInt()
            entrada.nextLine()

            R = N * 3

            println "Resultado = $R\n"

            I++
        }

        print "\nTecle <Enter> para encerrar... "
        entrada.nextLine()
    }
}
