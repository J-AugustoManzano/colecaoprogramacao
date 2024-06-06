// c08ex05.swift

import Foundation

var NOME: [String] = Array(repeating: "", count: 10)
var RESP: String = "SIM"
var PESQ: String = ""
var RESPOSTA: String = ""
var I: Int
var ACHA: Bool

print("PESQUISA SEQUENCIAL DE NOMES\n")

for I in 0...9 {
    print("Entre o \(String(format: "%2d", I+1))o. nome: ", terminator: "")
    if let input = readLine() {
        NOME[I] = input.trimmingCharacters(in: .newlines)
    }
}

while (RESP == "SIM") {
    print("\nEntre o nome a ser pesquisado: ", terminator: "")
    if let input = readLine() {
        PESQ = input.trimmingCharacters(in: .newlines)
    }

    I = 0
    var ACHA = false

    while (I <= 9 && ACHA == false) {
        if (PESQ == NOME[I]) {
            ACHA = true
        } else {
            I += 1
        }
    }

    if (ACHA == true) {
        print("\n\(PESQ) foi localizado na posicao \(I+1)")
    } else {
        print("\n\(PESQ) nao foi localizado")
    }

    repeat {
        print("\nDeseja continuar? (SIM/NAO): ", terminator: "")
        if let input = readLine() {
            RESPOSTA = input.trimmingCharacters(in: .newlines)
            RESP = RESPOSTA.uppercased()
            if (RESP != "SIM" && RESP != "NAO") {
                print("Informe apenas SIM ou NAO.")
            }
        }
    } while (RESP != "SIM" && RESP != "NAO")
}

print("\nTecle <Enter> para encerrar... ", terminator: "")
_ = readLine()
