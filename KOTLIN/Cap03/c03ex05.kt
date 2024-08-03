// c03ex05.kt

fun main() {
    var name: String

    print("Entre seu nome: ")
    name = readLine() ?: ""

    println("Ola, $name! Bem-vindo ao estudo de Kotlin.")

    print("\nAperte <Enter> para encerrar... ")
    readLine()
}
