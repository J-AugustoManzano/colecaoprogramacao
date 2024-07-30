// c06ex02.groovy

class Main {
    static void main(String[] args) {
        double[][] NOTAS = new double[8][4]
        int I, J
        Scanner entrada = new Scanner(System.in)

        for (I = 0; I <= 7; I++) {
            printf("Entre as notas do aluno %d:\n", I + 1)
            for (J = 0; J <= 3; J++) {
                printf("Nota %d: ", J + 1)
                NOTAS[I][J] = entrada.nextDouble()
                entrada.nextLine()
            }
            println()
        }

        println("\nRELATORIO DE NOTAS\n")
        println("Aluno Nota1 Nota2 Nota3 Nota4")
        println("----- ----- ----- ----- -----")
        for (I = 0; I <= 7; I++) {
            printf("%5d", I + 1)
            for (J = 0; J <= 3; J++) {
                printf("%6.1f", NOTAS[I][J])
            }
            println()
        }

        print("\nTecle <Enter> para encerrar... ")
        entrada.nextLine()
    }
}
