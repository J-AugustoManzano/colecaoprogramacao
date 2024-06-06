// c07ex04.swift

import Foundation

func Fatorial( N: Int) {
    var Fat: Int = 1
    for I in 1...N {
        Fat *= I
    }
    print("Fatorial = \(Fat)")
}

var Limite: Int = 0

repeat {
    print("Qual fatorial: ", terminator: "")
    if let entraLimite = Int(readLine() ?? "") {
        Limite = entraLimite
        break
    }
    else {
        print("\nEntrada invalida. Tente novamente.\n")
    }
} while (true)


Fatorial(N: Limite)

print()
print("Tecle <Enter> para encerrar...", terminator: "")
_ = readLine()
