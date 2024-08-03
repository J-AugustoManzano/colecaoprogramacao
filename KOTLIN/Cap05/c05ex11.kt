// c05ex11.kt

fun main() {
    var N: Int
    var R: Int	

    for (I in 1..5 step 1) {
        print("Entre um valor numerico: ")
        N = readLine()?.toInt() ?: 0

        R = N * 3

        println("Resultado = $R\n")
    }

    print("\nTecle <Enter> para encerrar... ")
    readLine()
}
