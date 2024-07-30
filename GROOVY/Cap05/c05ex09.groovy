// c05ex09.groovy

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

            if (I > 4) break
            I++
        } while (true)

        print "\nTecle <Enter> para encerrar... "
        entrada.nextLine()
    }
}
