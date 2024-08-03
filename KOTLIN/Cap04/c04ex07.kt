// c04ex07.kt

fun main() {
    var Numero: Int = 0

    print("Entre um numero inteiro: ")
    Numero = readLine()?.toInt() ?: 0

    if (Numero >= 20 && Numero <= 90) {
        println("O numero esta na faixa de 20 a 90.")
    } else {
        println("O numero esta fora da faixa de 20 a 90.")
    }

    print("\nTecle <Enter> para encerrar... ")
    readLine()
}
