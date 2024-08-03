// c06ex02.kt

fun main() {
    var NOTAS = Array(8) { FloatArray(4) }

    for (I in 0..7) {
        print("Entre as notas do aluno ${I + 1}:\n")
        for (J in 0..3) {
            print("Nota ${J + 1}: ")
            NOTAS[I][J] = readLine()?.toFloatOrNull() ?: 0.0f
        }
        println()
    }

    println("\nRELATORIO DE NOTAS\n")
    println("Aluno Nota1 Nota2 Nota3 Nota4")
    println("----- ----- ----- ----- -----")
    for (I in 0..7) {
        print("%5d".format(I + 1))
        for (J in 0..3)
            print("%6.1f".format(NOTAS[I][J]))
        println()
    }

    print("\nTecle <Enter> para encerrar... ")
    readLine()
}
