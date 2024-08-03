// c07ex07.kt

fun igual(A: Int, B: Int): Boolean {
    return A == B
}

fun main() {
    var x: Int
    var y: Int

    print("Informe o 1o. valor: ")
    x = readLine()?.toIntOrNull() ?: 0

    print("Informe o 2o. valor: ")
    y = readLine()?.toIntOrNull() ?: 0

    if (igual(x, y)) {
        println("Valores sao iguais")
    } else {
        println("Valores sao diferentes")
    }

    print("\nTecle <Enter> para encerrar... ")
    readLine()
}
