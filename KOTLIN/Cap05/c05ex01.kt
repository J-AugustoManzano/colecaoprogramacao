// c05ex01.kt

fun main() {
    var I: Int = 1
    var N: Int
    var R: Int

    while (I <= 5) {
        print("Entre um valor numerico: ")
        N = readLine()?.toInt() ?: 0

        R = N * 3

        println("Resultado = $R\n")

        I++
    }

    print("\nTecle <Enter> para encerrar... ")
    readLine()
}
