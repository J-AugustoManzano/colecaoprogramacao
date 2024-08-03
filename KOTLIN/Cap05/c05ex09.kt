// c05ex09.kt

fun main() {
    var I: Int = 1
    var N: Int
    var R: Int

    do {
        print("Entre um valor numerico: ")
        N = readLine()?.toInt() ?: 0

        R = N * 3

        println("Resultado = $R\n")

        if (I > 4) break
        I++
    } while (true)

    print("\nTecle <Enter> para encerrar... ")
    readLine()
}
