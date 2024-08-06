// c07ex01.kt

fun rotAdicao() {
    println()
    println("Rotina de Adicao")
    println()
    print("Entre o 1o. valor: ")
    val a1 = readln().toFloat()
    print("Entre o 2o. valor: ")
    val b1 = readln().toFloat()
    println()
    val r1 = a1 + b1
    println("O resultado da operacao equivale a: $r1")
    println()
}

fun rotSubtracao() {
    println()
    println("Rotina de Subtracao")
    println()
    print("Entre o 1o. valor: ")
    val a2 = readln().toFloat()
    print("Entre o 2o. valor: ")
    val b2 = readln().toFloat()
    println()
    val r2 = a2 - b2
    println("O resultado da operacao equivale a: $r2")
    println()
}

fun rotMultiplicacao() {
    println()
    println("Rotina de Multiplicacao")
    println()
    print("Entre o 1o. valor: ")
    val a3 = readln().toFloat()
    print("Entre o 2o. valor: ")
    val b3 = readln().toFloat()
    println()
    val r3 = a3 * b3
    println("O resultado da operacao equivale a: $r3")
    println()
}

fun rotDivisao() {
    println()
    println("Rotina de Divisao")
    println()
    print("Entre o 1o. valor: ")
    val a4 = readln().toFloat()
    print("Entre o 2o. valor: ")
    val b4 = readln().toFloat()
    println()
    if (b4 == 0.0f)
        println("O resultado da operacao equivale a: ERRO")
    else {
        val r4 = a4 / b4
        println("O resultado da operacao equivale a: $r4")
    }
    println()
}

fun main() {
    var option = 0
    while (option != 5) {
        println("CALCULADORA - V1")
        println()
        println("[1] - Adicao")
        println("[2] - Subtracao")
        println("[3] - Multiplicacao")
        println("[4] - Divisao")
        println("[5] - Fim de Programa")
        println()
        print("Escolha uma opcao: ")
        option = readln().toInt()

        if (option != 5) {
            when (option) {
                1 -> rotAdicao()
                2 -> rotSubtracao()
                3 -> rotMultiplicacao()
                4 -> rotDivisao()
                else -> {
                    println()
                    println("Opcao invalida - Tente novamente")
                    println()
                }
            }
        }
    }
}
