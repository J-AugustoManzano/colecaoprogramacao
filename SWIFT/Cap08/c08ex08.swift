// c08ex08.swift

import Foundation

let FIM = 10
var MATRIZ = [Int](repeating: 0, count: FIM)
var INICIO = 0

func Vazia() -> Bool {
    if (INICIO == 0) {
        return true
    } else {
        return false
    }
}

func Cheia() -> Bool {
    if (INICIO == FIM) {
        return true
    } else {
        return false
    }
}

func Adicionar(_ ELEMENTO: Int) -> Bool {
    if (Cheia()) {
        return false
    } else {
        MATRIZ[INICIO] = ELEMENTO
        INICIO += 1
        return true
    }
}

func Retirar(_ ELEMENTO: inout Int) -> Bool {
    if (Vazia()) {
        return false
    } else {
        ELEMENTO = MATRIZ[0]
        for i in 0..<INICIO - 1 {
            MATRIZ[i] = MATRIZ[i + 1]
        }
        INICIO -= 1
        return true
    }
}

func Entrada() {
    print("Entre com um elemento numerico: ", terminator: "")
    if let X = Int(readLine() ?? "") {
        print()
        if (Adicionar(X)) {
            print("Elemento \(X) inserido na posicao \(INICIO).")
        } else {
            print("Impossivel adicionar \(X) - fila lotada.")
        }
        print()
    } else {
        print("\nEntrada invalida.\n")
    }
}

func Saida() {
    var ELEMENTO: Int = 0
    if (Retirar(&ELEMENTO)) {
        print("Elemento \(ELEMENTO) retirado do inicio da fila.")
    } else {
        print("Impossivel retirar elemento - fila vazia.")
    }
    print()
}

func Atual() {
    if (!(Vazia())) {
        print("\(MATRIZ[0]) - primeiro elemento da fila.")
    } else {
        print("Impossivel apresentar - fila vazia.")
    }
    print()
}

func Exibicao() {
    if (!(Vazia())) {
        for i in 0..<INICIO {
            print("Posicao: \(String(format: "%2d", i+1)) = \(MATRIZ[i])")
        }
    } else {
        print("Impossivel apresentar - fila vazia.")
    }
    print()
}

func Criar() {
    INICIO = 0
    for i in 0..<FIM {
        MATRIZ[i] = 0
    }
}

var OPCAO = 0
while (OPCAO != 6) {
    print("PROGRAMA: FILA\n")
    print("[1] - Entrada")
    print("[2] - Saida")
    print("[3] - Apresentar 1o. da fila")
    print("[4] - Apresentar a fila")
    print("[5] - Nova fila")
    print("[6] - Sair\n")
    print("Escolha uma opcao: ", terminator: "")

    if let entrada = readLine(), let op = Int(entrada) {
        OPCAO = op
        print()
        if (OPCAO != 6) {
            switch (OPCAO) {
                case 1: Entrada()
                case 2: Saida()
                case 3: Atual()
                case 4: Exibicao()
                case 5: Criar()
                default:
                    print("Opcao invalida. Tente novamente.\n")
            }
        }
    } else {
        print("Entrada invalida. Tente novamente.\n")
    }
}
