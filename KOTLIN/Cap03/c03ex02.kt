// c03ex02.kt

fun main() {
    var r: Double
    var a: Double

    print("Entre valor do raio: ")
    r = readLine()?.toDouble() ?: 0.0

    a = Math.PI * Math.pow(r, 2.0)

    println("Resultado = %.2f".format(a))

    println("\nTecle <Enter> para encerrar... ")
    readLine()
}
