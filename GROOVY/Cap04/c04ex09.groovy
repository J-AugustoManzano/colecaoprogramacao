// c04ex09.groovy

class Main {
    static void main(String[] args) {
        int prova1, prova2
        Scanner entrada = new Scanner(System.in)

        println "Classificacao esportiva\n"
        println "Entre '1' se atleta pontuou na 1a prova"
        println "Entre '1' se atleta pontuou na 2a prova"
        println "Qualquer outro valor se nao pontuou nas provas\n"

        print "Prova 1: "
        prova1 = entrada.nextInt()
        entrada.nextLine()

        print "Prova 2: "
        prova2 = entrada.nextInt()
        entrada.nextLine()

        if (prova1 == 1 ^ prova2 == 1)
            println "Atleta participa da terceira prova."
        else {
            println "Atleta nao participa da terceira prova."
            if (prova1 == 1 && prova2 == 1)
                println "Classificado para a final."
            else
                println "Desclassificado da competicao."
        }

        print "\nPressione <Enter> para encerrar... "
        entrada.nextLine()
    }
}
