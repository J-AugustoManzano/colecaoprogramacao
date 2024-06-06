// c07ex08.swift

import Foundation

func Fatorial(_ N: Int) -> Int {
    if N == 0 {
        return 1
    } else {
        return N * Fatorial(N - 1)
    }
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
