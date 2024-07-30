// c07ex01.groovy

class Main {
    static Scanner scanner = new Scanner(System.in)

    static void rotinaDeAdicao() {
        float a1, b1, r1
        println()
        println("Rotina de Adicao")
        println()
        print("Entre o 1o. valor: ")
        a1 = scanner.nextFloat()
        scanner.nextLine()
        print("Entre o 2o. valor: ")
        b1 = scanner.nextFloat()
        scanner.nextLine()
        println()
        r1 = a1 + b1
        println("O resultado da operacao equivale a: $r1")
        println()
    }

    static void rotinaDeSubtracao() {
        float a2, b2, r2
        println()
        println("Rotina de Subtracao")
        println()
        print("Entre o 1o. valor: ")
        a2 = scanner.nextFloat()
        scanner.nextLine()
        print("Entre o 2o. valor: ")
        b2 = scanner.nextFloat()
        scanner.nextLine()
        println()
        r2 = a2 - b2
        println("O resultado da operacao equivale a: $r2")
        println()
    }

    static void rotinaDeMultiplicacao() {
        float a3, b3, r3
        println()
        println("Rotina de Multiplicacao")
        println()
        print("Entre o 1o. valor: ")
        a3 = scanner.nextFloat()
        scanner.nextLine()
        print("Entre o 2o. valor: ")
        b3 = scanner.nextFloat()
        scanner.nextLine()
        println()
        r3 = a3 * b3
        println("O resultado da operacao equivale a: $r3")
        println()
    }

    static void rotinaDeDivisao() {
        float a4, b4, r4
        println()
        println("Rotina de Divisao")
        println()
        print("Entre o 1o. valor: ")
        a4 = scanner.nextFloat()
        scanner.nextLine()
        print("Entre o 2o. valor: ")
        b4 = scanner.nextFloat()
        scanner.nextLine()
        println()
        if (b4 == 0)
            println("O resultado da operacao equivale a: ERRO")
        else {
            r4 = a4 / b4
            println("O resultado da operacao equivale a: $r4")
        }
        println()
    }

    static void main(String[] args) {
        int opcao = 0
        while (opcao != 5) {
            println("CALCULADORA - V1")
            println()
            println("[1] - Adicao")
            println("[2] - Subtracao")
            println("[3] - Multiplicacao")
            println("[4] - Divisao")
            println("[5] - Fim de Programa")
            println()
            print("Escolha uma opcao: ")
            opcao = scanner.nextInt()
            scanner.nextLine()

            if (opcao != 5) {
                switch (opcao) {
                    case 1:
                        rotinaDeAdicao()
                        break
                    case 2:
                        rotinaDeSubtracao()
                        break
                    case 3:
                        rotinaDeMultiplicacao()
                        break
                    case 4:
                        rotinaDeDivisao()
                        break
                    default:
                        println()
                        println("Opcao invalida - Tente nova-mente")
                        println()
                        break
                }
            }
        }
    }
}
