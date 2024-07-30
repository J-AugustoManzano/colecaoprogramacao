// c04ex02.groovy

class Main {
    static void main(String[] args) {
        int A, B, X
        Scanner entrada = new Scanner(System.in)

        print "Entre o 1o. valor numerico: "
        A = entrada.nextInt()
        entrada.nextLine()

        print "Entre o 2o. valor numerico: "
        B = entrada.nextInt()
        entrada.nextLine()

        if (A > B) {
            X = A
            A = B
            B = X
        }

        println "Os valores sao: $A e $B."

        print "\nTecle <Enter> para encerrar... "
        entrada.nextLine()
    }
}
