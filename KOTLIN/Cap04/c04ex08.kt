// c04ex08.kt

fun main() {
    var Transp: Char

    println("Escolha o tipo de transporte:\n")
    println("[M] - Motocicleta")
    println("[S] - Scooter\n")

    print("==> ")
    Transp = readLine()?.uppercase()?.get(0) ?: ' '

    println()
    if (Transp == 'M' || Transp == 'S') {
        println("Transporte valido.")
    } else {
        println("Transporte invalido.")
    }

    print("\nTecle <Enter> para encerrar... ")
    readLine()
}
