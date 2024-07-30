// c05ex06.groovy

class Main {
    static void main(String[] args) {
        char RESP
        int N, R
        Scanner entrada = new Scanner(System.in)

        RESP = 'S'
        do {
            print "Entre um valor numerico: "
            N = entrada.nextInt()
            entrada.nextLine()

            R = N * 3

            println "Resultado = $R\n"

            print "Deseja continuar? (S/N): "
            RESP = Character.toUpperCase(entrada.next().charAt(0))
            entrada.nextLine()

            println()
        } while (!(Character.toUpperCase(RESP) != 'S'))

        print "\nTecle <Enter> para encerrar... "
        entrada.nextLine()
    }
}
