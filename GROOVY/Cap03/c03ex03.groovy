// c03ex03.groovy

class Main {
    static void main(String[] args) {
        double HT, VH, PD, SB, TD, SL
        Scanner entrada = new Scanner(System.in)

        print "Entre quantidade de horas trabalhadas ..: "
        HT = entrada.nextDouble()
        entrada.nextLine()

        print "Entre valor do salario-hora ............: "
        VH = entrada.nextDouble()
        entrada.nextLine()

        print "Entre valor do percentual de desconto ..: "
        PD = entrada.nextDouble()
        entrada.nextLine()

        SB = HT * VH
        TD = (PD / 100) * SB
        SL = SB - TD

        printf("\nSalario Bruto ....: %.2f\n", SB)
        printf("Salario Liquido ..: %.2f\n", SL)

        print "\nTecle <Enter> para encerrar... "
        entrada.nextLine()
    }
}
