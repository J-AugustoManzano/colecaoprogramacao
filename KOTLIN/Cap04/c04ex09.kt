
// c04ex09.kt

fun main() {
    var p1: Int
    var p2: Int

    println("Classificacao esportiva\n")
    println("Entre '1' se atleta pontuou na 1a prova")
    println("Entre '1' se atleta pontuou na 2a prova")
    println("Qualquer outro valor se nao pontuou nas provas\n")

    print("Prova 1: ")
    p1 = readLine()?.toInt() ?: 0

    print("Prova 2: ")
    p2 = readLine()?.toInt() ?: 0

    if ((p1 == 1 && !(p2 == 1)) || (!(p1 == 1) && p2 == 1)) {
        println("Atleta participa da terceira prova.")
    } else {
        println("Atleta nao participa da terceira prova.")
        if (p1 == 1 && p2 == 1) {
            println("Classificado para a final.")
        } else {
            println("Desclassificado da competicao.")
        }
    }

    print("\nPressione <Enter> para encerrar... ")
    readLine()
}    
