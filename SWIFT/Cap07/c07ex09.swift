// c07ex09.swift

import Foundation

func FatorialBase(_ N: Int, _ P: Int) -> Int {
    if N == 0 {
        return P
    } else {
        return FatorialBase(N - 1, N * P)
    }
}

func Fatorial(_ N: Int) -> Int {
    return FatorialBase(N, 1)
}

var LIMITE: Int = 0

repeat {
    print("Qual fatorial: ", terminator: "")
    if let entraLIMITE = Int(readLine() ?? "") {
        LIMITE = entraLIMITE
        print("Fatorial = \(Fatorial(LIMITE))")
        break
    }
    else {
        print("\nEntrada invalida. Tente novamente.\n")
    }
} while (true)

print()
print("Tecle <Enter> para encerrar...", terminator: "")
_ = readLine()
