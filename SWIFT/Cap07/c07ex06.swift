// c07ex06.swift

import Foundation

func Fatorial(_ N: Int) -> Int {
    var Fat = 1
    for I in 1...N {
        Fat *= I
    }
    return Fat
}

var Limite: Int = 0

repeat {
    print("Qual fatorial: ", terminator: "")
    if let entraLimite = Int(readLine() ?? "") {
        Limite = entraLimite
        print("Fatorial = \(Fatorial(Limite))")
        break
    }
    else {
        print("\nEntrada invalida. Tente novamente.\n")
    }
} while (true)

print()
print("Tecle <Enter> para encerrar...", terminator: "")
_ = readLine()
