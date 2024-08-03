// c05ex02.kt

fun main() {
    var RESP: Char = 'S'
    var N: Int
    var R: Int

    while (RESP == 'S') {
        print("Entre um valor numerico: ")
        N = readLine()?.toInt() ?: 0

        R = N * 3

        println("Resultado = $R\n")

        print("Deseja continuar? (S/N): ")
        RESP = readLine()?.uppercase()?.get(0) ?: 'N'
        
        println()
    }

    print("\nTecle <Enter> para encerrar... ")
    readLine()
}
