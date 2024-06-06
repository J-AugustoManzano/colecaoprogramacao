// c07ex05.swift

import Foundation

func Fatorial(_ N: Int, _ Fat: inout Int) {
    Fat = 1
    for I in 1...N {
        Fat *= I
    }
}

var Limite: Int = 0, Resp: Int = 0

repeat {
    print("Qual fatorial: ", terminator: "")
    if let entraLimite = Int(readLine() ?? "") {
        Limite = entraLimite
        Fatorial(Limite, &Resp)
        print("Fatorial = \(Resp)")
        break
    }
    else {
        print("\nEntrada invalida. Tente novamente.\n")
    }
} while (true)

print()
print("Tecle <Enter> para encerrar...", terminator: "")
_ = readLine()
