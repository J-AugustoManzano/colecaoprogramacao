// c04ex07.groovy

class Main {
    static void main(String[] args) {
        int Numero
        Scanner entrada = new Scanner(System.in)

        print "Entre um numero inteiro: "
        Numero = entrada.nextInt()
        entrada.nextLine()

        if (Numero >= 20 && Numero <= 90)
            println "O numero esta na faixa de 20 a 90."
        else
            println "O numero esta fora da faixa de 20 a 90."

        print "\nTecle <Enter> para encerrar... "
        entrada.nextLine()
    }
}
