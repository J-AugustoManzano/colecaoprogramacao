// c06ex03.groovy

class Main {
    static void main(String[] args) {
        Aluno[] ALUNO = new Aluno[8]
        int I, J
        Scanner scanner = new Scanner(System.in)

        println("Escola de Computacao XPTO")
        println("Cadastro Escolar de Aluno")
        println()

        for (I = 0; I <= 7; I++) {
            println("Aluno: " + (I + 1))
            println()

            ALUNO[I] = new Aluno()

            print("Nome ..............: ")
            ALUNO[I].Nome = scanner.nextLine()

            print("Turma .............: ")
            ALUNO[I].Turma = scanner.nextLine().charAt(0)

            print("Sala ..............: ")
            ALUNO[I].Sala = Integer.parseInt(scanner.nextLine())

            println()

            for (J = 0; J <= 3; J++) {
                print("Entre a " + (J + 1) + "a. nota ..: ")
                ALUNO[I].Notas[J] = Float.parseFloat(scanner.nextLine())
            }

            println()
        }

        println("Escola de Computacao XPTO")
        println("Cadastro Escolar de Aluno")
        println()
        println("DADOS DOS ALUNOS")

        print("Aluno ")
        print("Nome                           ")
        print("Sala ")
        print("Turma ")
        print("Nota1 ")
        print("Nota2 ")
        print("Nota3 ")
        println("Nota4")

        print("----- ")
        print("------------------------------ ")
        print("---- ")
        print("----- ")
        print("----- ")
        print("----- ")
        print("----- ")
        println("-----")

        for (I = 0; I <= 7; I++) {
            printf("%5d ", I + 1)
            printf("%-30s ", ALUNO[I].Nome)
            printf("%4d ", ALUNO[I].Sala)
            printf("%5c ", ALUNO[I].Turma)
            for (J = 0; J <= 3; J++)
                printf("%5.1f ", ALUNO[I].Notas[J])
            println()
        }

        println()
        print("Tecle <Enter> para encerrar... ")
        scanner.nextLine()
    }

    static class Aluno {
        String Nome
        char Turma
        int Sala
        float[] Notas = new float[4]
    }
}
