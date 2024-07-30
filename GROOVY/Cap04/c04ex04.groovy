// c04ex04.groovy

class Main {
    static void main(String[] args) {
        float N1, N2, N3, N4, NE, MD1, MD2
        Scanner entrada = new Scanner(System.in)

        print "Entre a 1a. nota .......: "
        N1 = entrada.nextFloat()
        entrada.nextLine()

        print "Entre a 2a. nota .......: "
        N2 = entrada.nextFloat()
        entrada.nextLine()

        print "Entre a 3a. nota .......: "
        N3 = entrada.nextFloat()
        entrada.nextLine()

        print "Entre a 4a. nota .......: "
        N4 = entrada.nextFloat()
        entrada.nextLine()

        MD1 = (N1 + N2 + N3 + N4) / 4

        println()
        if (MD1 >= 7) {
            println "Aprovado"
            printf "Media: %.2f\n", MD1
        } else {
            print "Entre a nota de exame ..: "
            NE = entrada.nextFloat()
            entrada.nextLine()

            MD2 = (MD1 + NE) / 2

            println()
            if (MD2 >= 5)
                println "Aprovado em exame"
            else
                println "Reprovado"
            printf "Media: %.2f\n", MD2
        }

        print "\nTecle <Enter> para encerrar... "
        entrada.nextLine()
    }
}
