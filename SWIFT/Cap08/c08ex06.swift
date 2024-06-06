// c08ex06.swift

import Foundation

var NUMERO: [Int] = Array(repeating: 0, count: 10)
var I: Int, J: Int, X: Int, PESQ: Int, COMECO: Int, FINAL: Int, MEIO: Int
var ACHA: Bool = false
var RESP: String = "SIM"
var RESPOSTA: String = ""

print("PESQUISA BINARIA DE NUMEROS\n")

for I in 0...9 {
   print("Entre o \(String(format: "%2d", I+1))o. nome: ", terminator: "")
    NUMERO[I] = Int(readLine()!) ?? 0
}

for I in 0...8 {
    for J in (I + 1)...9 {
        if (NUMERO[I] > NUMERO[J]) {
            X = NUMERO[I]
            NUMERO[I] = NUMERO[J]
            NUMERO[J] = X
        }
    }
}

while (RESP == "SIM") {
    print("\nEntre o numero a ser pesquisado: ", terminator: "")
    PESQ = Int(readLine()!) ?? 0

    COMECO = 0
    FINAL = 9
    MEIO = 0
    ACHA = false

    while (COMECO <= FINAL && ACHA  == false) {
        MEIO = (COMECO + FINAL) / 2
        if (PESQ == NUMERO[MEIO]) {
            ACHA = true
        } else if (PESQ < NUMERO[MEIO]) {
            FINAL = MEIO - 1
        } else {
            COMECO = MEIO + 1
        }
    }

    if (ACHA == true) {
        print("\n\(PESQ) foi localizado na posicao \(MEIO + 1)")
    } else {
        print("\n\(PESQ) nao foi localizado")
    }

    repeat {
        print("\nDeseja continuar? (SIM/NAO): ", terminator: "")
        RESPOSTA = readLine()!
        RESP = RESPOSTA.uppercased()
        if RESP != "SIM" && RESP != "NAO" {
            print("Informe apenas SIM ou NAO.")
        }
    } while (RESP != "SIM" && RESP != "NAO")
}

print("\nTecle <Enter> para encerrar... ", terminator: "")
_ = readLine()
