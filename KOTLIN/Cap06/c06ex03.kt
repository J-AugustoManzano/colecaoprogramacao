// c06ex03.kt

data class Aluno(
    var Nome: String = "",
    var Turma: Char = ' ',
    var Sala: Int = 0,
    var Notas: FloatArray = floatArrayOf(0f, 0f, 0f, 0f)
)

fun main() {
    var ALUNO: Array<Aluno> = Array(8) { Aluno() }

    println("Escola de Computacao XPTO")
    println("Cadastro Escolar de Aluno")
    println()

    for (I in 0..7) {
        println("Aluno: ${I + 1}")
        println()

        print("Nome ..............: ")
        ALUNO[I].Nome = readLine() ?: ""

        print("Turma .............: ")
        ALUNO[I].Turma = readLine()?.firstOrNull() ?: ' '

        print("Sala ..............: ")
        ALUNO[I].Sala = readLine()?.toIntOrNull() ?: 0

        println()

        for (J in 0..3) {
            print("Entre a ${J + 1}a. nota ..: ")
            ALUNO[I].Notas[J] = readLine()?.toFloatOrNull() ?: 0f
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

    for (I in 0..7) {
        print("%5d".format(I + 1))
        print(" %-30s".format(ALUNO[I].Nome))
        print(" %4d".format(ALUNO[I].Sala))
        print(" %5c".format(ALUNO[I].Turma))
        for (J in 0..3)
            print(" %5.1f".format(ALUNO[I].Notas[J]))
        println()
    }

    println()
    print("Tecle <Enter> para encerrar... ")
    readLine()
}
