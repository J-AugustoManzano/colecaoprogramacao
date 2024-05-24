// c08ex07.go

package main
import "fmt"

const LIMITE = 10

var MATRIZ [LIMITE]int
var TOPO, I int

func vazia() bool {
  if (TOPO == 0) {
    return true
  } else {
    return false
  }
}

func cheia() bool {
  if (TOPO == LIMITE) {
    return true
  } else {
    return false
  }
}

func adicionar(elemento int) bool {
  if (cheia()) {
    return false
  } else {
    MATRIZ[TOPO] = elemento
    TOPO++
    return true
  }
}

func retirar() int {
  if (vazia()) {
    return 0
  } else {
    TOPO--
    elemento := MATRIZ[TOPO]
    MATRIZ[TOPO] = 0
    return elemento
  }
}

func empilhar() {
  fmt.Print("Entre com um elemento numerico: ")
  var X int
  fmt.Scan(&X)
  if (adicionar(X)) {
    fmt.Printf("\nElemento %d inserido na posicao %d.\n", X, TOPO)
  } else {
    fmt.Printf("\nImpossivel adicionar %d - pilha cheia.\n", X)
  }
  fmt.Println()
}

func desempilhar() {
  var elemento int
  elemento = retirar()
  if (elemento != 0) {
    fmt.Printf("Elemento %d retirado do topo da pilha.\n", elemento)
  } else {
    fmt.Print("Impossivel retirar elemento - pilha vazia.\n")
  }
  fmt.Println()
}

func mostrar() {
  if (!(vazia())) {
    for I = TOPO - 1; I >= 0; I-- {
      fmt.Printf("Posicao: %2d = %d\n", I + 1, MATRIZ[I])
    }
  } else {
    fmt.Print("Impossivel apresentar - pilha vazia.\n")
  }
  fmt.Println()
}

func criar() {
  TOPO = 0
  for I = 0; I <= LIMITE - 1; I++ {
    MATRIZ[I] = 0
  }
}

func main() {
  criar()
  var opcao int
  for (opcao != 5) {
    fmt.Print("PROGRAMA: PILHA\n\n")
    fmt.Print("[1] - Empilhar\n")
    fmt.Print("[2] - Desempilhar\n")
    fmt.Print("[3] - Mostrar\n")
    fmt.Print("[4] - Criar pilha\n")
    fmt.Print("[5] - Sair\n\n")
    fmt.Print("Escolha uma opcao: ")
    fmt.Scan(&opcao)
    fmt.Println()

    if (opcao != 5) {
      switch (opcao) {
      case 1: empilhar()
      case 2: desempilhar()
      case 3: mostrar()
      case 4: criar()
      default:
        fmt.Print("Opcao invalida. Tente novamente.\n")
      }
    }
  }
}
