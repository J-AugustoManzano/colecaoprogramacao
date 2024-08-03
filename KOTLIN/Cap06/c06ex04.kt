// c06ex04.kt

fun main() {
    var N: Int
    val A = mutableListOf<String>()

    print("Entre a quantidade de elementos da matriz: ")
    N = readln().toInt()
    println()

    for (i in 0..(N - 1)) {
        print("Entre o ${i + 1}o. nome: ")
        A.add(readln())
    }

    println()
    println("Foram fornecidos os nomes:")
    println()

    for (i in 0..(N - 1))
        println("Nome ${i + 1} = ${A[i]}")

    print("\nTecle <Enter> para encerrar... ")
    readln()
}
