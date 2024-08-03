// c04ex05.kt

fun main() {
    var Mes: Int = 0

    print("Entre com um numero equivalente a um mes: ")
    Mes = readLine()?.toInt() ?: 0

    when (Mes) {
         1 -> println("Janeiro")
         2 -> println("Fevereiro")
         3 -> println("Marco")
         4 -> println("Abril")
         5 -> println("Maio")
         6 -> println("Junho")
         7 -> println("Julho")
         8 -> println("Agosto")
         9 -> println("Setembro")
        10 -> println("Outubro")
        11 -> println("Novembro")
        12 -> println("Dezembro")
        else -> println("Mes invalido")
    }

    print("\nTecle <Enter> para encerrar... ")
    readLine()
}
