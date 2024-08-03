// c04ex11.kt

fun main() {
    var N: Int
    var R4: Int
    var R5: Int

    print("Entre um numero inteiro: ")
    N = readLine()?.toInt() ?: 0

    R4 = N % 4
    R5 = N % 5

    if (R4 == 0 && R5 == 0) {
        println("Resultado = $N")
    } else {
        println("Valor nao e divisivel por 4 e 5")
    }

    print("\nTecle <Enter> para encerrar... ")
    readLine()
}
