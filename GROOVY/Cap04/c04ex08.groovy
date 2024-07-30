// c04ex08.groovy

class Main {
    static void main(String[] args) {
        char Transp
        Scanner entrada = new Scanner(System.in)

        println "Escolha o tipo de transporte:\n"
        println "[M] - Motocicleta"
        println "[S] - Scooter\n"

        print "==> "
        Transp = Character.toUpperCase(entrada.nextLine().charAt(0))

        println()
        if (Transp == 'M' || Transp == 'S')
            println "Transporte valido."
        else
            println "Transporte invalido."

        print "\nTecle <Enter> para encerrar... "
        entrada.nextLine()
    }
}
