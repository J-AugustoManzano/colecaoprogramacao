// c04ex05.groovy

class Main {
    static void main(String[] args) {
        int Mes
        Scanner entrada = new Scanner(System.in)

        print "Entre com um numero equivalente a um mes: "
        Mes = entrada.nextInt()
        entrada.nextLine()

        switch (Mes) {
            case 1:
                println "Janeiro"
                break
            case 2:
                println "Fevereiro"
                break
            case 3:
                println "Marco"
                break
            case 4:
                println "Abril"
                break
            case 5:
                println "Maio"
                break
            case 6:
                println "Junho"
                break
            case 7:
                println "Julho"
                break
            case 8:
                println "Agosto"
                break
            case 9:
                println "Setembro"
                break
            case 10:
                println "Outubro"
                break
            case 11:
                println "Novembro"
                break
            case 12:
                println "Dezembro"
                break
            default:
                println "Mes invalido"
                break
        }

        print "\nTecle <Enter> para encerrar... "
        entrada.nextLine()
    }
}
