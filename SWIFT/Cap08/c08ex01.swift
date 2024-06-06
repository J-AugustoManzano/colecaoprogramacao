// c08ex01.swift

import Foundation

func validaInteiro(_ Numero: String) -> Bool {
    let numeroRegex = try? 
        NSRegularExpression(pattern: "^[0-9]+$", 
        options: .caseInsensitive)
    let range = NSRange(location: 0, length: Numero.count)
    return numeroRegex?.firstMatch(in: Numero, options: [],
           range: range) != nil
}

var Numero: String = ""

repeat {
    print("Entre um valor numerico inteiro: ", terminator: "")
    if let entraNumero = readLine() {
        Numero = entraNumero.trimmingCharacters(in:
                 .whitespacesAndNewlines)
        
        if (Numero.isEmpty) {
            print("\nErro: Tecla <Enter> acionada acidentalmente.\n")
            continue
        }
        
        if !(validaInteiro(Numero)) {
            print("\nErro: Entre um numero inteiro.\n")
            continue
        }
        
        print("\nEntrada valida fornecida: \(Numero)")
        break
    }
} while (true)

print()
print("Tecle <Enter> para encerrar... ", terminator: "")
_ = readLine() 
