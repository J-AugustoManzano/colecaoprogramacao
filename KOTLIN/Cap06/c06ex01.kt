// c06ex01.kt

fun main() {
    var MD = Array(8) { 0.0f }

    var SOMA: Double = 0.0
    var MEDIA: Double

    for (I in 0..7) {
        print("Entre a media do aluno ${I + 1}: ")
        MD[I] = readLine()?.toFloatOrNull() ?: 0.0f
        SOMA += MD[I]
    }

    MEDIA = SOMA / 8

    println()
    println("Media geral: %.2f".format(MEDIA))

    print("\nTecle <Enter> para encerrar... ")
    readLine()
}
