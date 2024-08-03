// c04ex04.kt

fun main() {
    var N1: Float
    var N2: Float
    var N3: Float
    var N4: Float
    var NE: Float
    var MD1: Float
    var MD2: Float

    print("Entre a 1a. nota .......: ")
    N1 = readLine()?.toFloat() ?: 0.0f

    print("Entre a 2a. nota .......: ")
    N2 = readLine()?.toFloat() ?: 0.0f

    print("Entre a 3a. nota .......: ")
    N3 = readLine()?.toFloat() ?: 0.0f

    print("Entre a 4a. nota .......: ")
    N4 = readLine()?.toFloat() ?: 0.0f

    MD1 = (N1 + N2 + N3 + N4) / 4

    println()
    if (MD1 >= 7) {
        println("Aprovado")
        println("Media: %.2f".format(MD1))
    } else {
        print("Entre a nota de exame ..: ")
        NE = readLine()?.toFloat() ?: 0.0f

        MD2 = (MD1 + NE) / 2

        println()
        if (MD2 >= 5) {
            println("Aprovado em exame")
        } else {
            println("Reprovado")
        }
        println("Media: %.2f".format(MD2))
    }

    print("\nTecle <Enter> para encerrar... ")
    readLine()
}
