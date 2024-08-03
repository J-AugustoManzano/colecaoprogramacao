// c03ex01.kt

fun main() {
    var A: Int
    var B: Int
    var X: Int

    print("Entre o 1o. valor numerico inteiro: ")
    A = readLine()?.toInt() ?: 0

    print("Entre o 2o. valor numerico inteiro: ")
    B = readLine()?.toInt() ?: 0

    X = A + B

    println("Resultado = $X")

    print("\nTecle <Enter> para encerrar... ")
    readLine()
}
