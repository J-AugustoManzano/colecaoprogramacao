// c05ex06.kt

fun main() {
    var RESP: Char
    var N: Int
    var R: Int

    do {
        print("Entre um valor numerico: ")
        N = readLine()?.toInt() ?: 0

        R = N * 3

        println("Resultado = $R\n")

        print("Deseja continuar? (S/N): ")
        RESP = readLine()?.uppercase()?.get(0) ?: 'N'

        println()
    } while (!(RESP != 'S'))

    print("\nTecle <Enter> para encerrar... ")
    readLine()
}
