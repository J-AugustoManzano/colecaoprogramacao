// c05ex05.groovy

class Main {
    static void main(String[] args) {
        int I, N, R
        Scanner entrada = new Scanner(System.in)

        I = 1
        do {
            print "Entre um valor numerico: "
            N = entrada.nextInt()
            entrada.nextLine()

            R = N * 3

            println "Resultado = $R\n"

            I++
        } while (!(I > 5))

        print "\nTecle <Enter> para encerrar... "
        entrada.nextLine()
    }
}
