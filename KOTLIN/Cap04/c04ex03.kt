// c04ex03.kt

fun main() {
    var A: Int
    var B: Int
    var X: Int
    var R: Int

    print("Entre o 1o. valor numerico: ")
    A = readLine()?.toInt() ?: 0

    print("Entre o 2o. valor numerico: ")
    B = readLine()?.toInt() ?: 0

    X = A + B

    if (X >= 10)
        R = X + 5
    else
        R = X - 7

    println("Resultado = $R")

    print("\nTecle <Enter> para encerrar... ")
    readLine()
}
