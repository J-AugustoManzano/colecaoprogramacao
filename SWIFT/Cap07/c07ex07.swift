// c07ex07.swift

import Foundation

func Igual(_ A: Int, _ B: Int) -> Bool {
    return A == B
}

var X: Int = 0, Y: Int = 0

repeat {
    print("Informe o 1o. valor: ", terminator: "")
    if let entradaX = Int(readLine() ?? "") {
        X = entradaX
        break
    }
    else {
        print("Entrada invalida. Tente novamente.")
    }
} while (true)

repeat {
    print("Informe o 2o. valor: ", terminator: "")
    if let entradaY = Int(readLine() ?? "") {
        Y = entradaY
        break
    }
    else {
        print("Entrada invalida. Tente novamente.")
    }
} while (true)

if Igual(X, Y) {
    print("Valores sao iguais")
}
else {
    print("Valores sao diferentes")
}

print()
print("Tecle <Enter> para encerrar...", terminator: "")
_ = readLine()
