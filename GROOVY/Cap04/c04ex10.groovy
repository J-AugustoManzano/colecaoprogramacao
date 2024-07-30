// c04ex10.groovy

class Main {
    static void main(String[] args) {
        int A, B, X, C
        Scanner entrada = new Scanner(System.in)

        print "Entre valor para a variavel <A>: "
        A = entrada.nextInt()
        entrada.nextLine()

        print "Entre valor para a variavel <B>: "
        B = entrada.nextInt()
        entrada.nextLine()

        print "Entre valor para a variavel <X>: "
        X = entrada.nextInt()
        entrada.nextLine()

        if (!(X > 5))
            C = A - B
        else
            C = A + B

        println "\nResultado = $C"

        print "\nPressione <Enter> para encerrar... "
        entrada.nextLine()
    }
}
