// c03ex05.groovy

class Main {
    static void main(String[] args) {
        String nome
        Scanner entrada = new Scanner(System.in)

        print "Entre seu nome: "
        nome = entrada.nextLine()

        println "Ola, $nome! Bem-vindo ao estudo de Groovy."

        print "\nAperte <Enter> para encerrar... "
        entrada.nextLine()
    }
}
