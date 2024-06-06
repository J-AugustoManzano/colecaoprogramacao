// c08ex02.swift

import Foundation

func validaNumero(_ Numero: String) -> Bool {
    let pattern = #"^[0-9]+(\.[0-9]+)?$"#

    do {
        let numeroRegex = try
            NSRegularExpression(pattern: pattern, 
            options: .caseInsensitive)
        let range = NSRange(location: 0, length: Numero.count)
        return numeroRegex.firstMatch(in: Numero, options: [], 
            range: range) != nil
    } catch {
        print("Erro ao criar a expressão regular: \(error)")
        return false
    }
}

var Numero: String = ""

repeat {
    print("Entre um valor numerico: ", terminator: "")
    if let (entraNumero) = readLine() {
        Numero = entraNumero.trimmingCharacters(in: 
                 .whitespacesAndNewlines)

        if (Numero.isEmpty) {
            print("\nErro: Tecla <Enter> acionada acidentalmente.\n")
            continue
        }

        if !(validaNumero(Numero)) {
            print("\nErro: Entre um valor numerico valido.\n")
            continue
        }

        print("\nEntrada valida fornecida: \(Numero)")
        break
    }
} while (true)

print()
print("Tecle <Enter> para encerrar... ", terminator: "")
_ = readLine()

