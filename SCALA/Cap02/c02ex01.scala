// c02ex01.scala

object Main {
  def main(args: Array[String]): Unit = {
    // Operadores binários
    println(5 + 3)    // Saída: 8
    println(10 - 4)   // Saída: 6
    println(2 * 6)    // Saída: 12
    println(10.0 / 3) // Saída: 3.3333333333333335 (quociente real)
    println(10 / 3)   // Saída: 3 (quociente inteiro)
    println(10 % 3)   // Saída: 1 (resto da divisão)

    // Operadores unários
    println(+5)       // Saída: 5 (mantém positivo)
    println(-8)       // Saída: -8 (inverte sinal)

    // Exponenciação
    println(math.pow(2, 3)) // Saída: 8.0 (2 elevado a 3)
  }
}
