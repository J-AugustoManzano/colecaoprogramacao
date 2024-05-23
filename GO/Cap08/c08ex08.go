// c08ex08.go

package main
import "fmt"

const FIM = 10

var MATRIZ [FIM]int
var INICIO, I int

func vazia() bool {
  if (INICIO == 0) {
    return true
  } else {
    return false
  }
}

func cheia() bool {
  if (INICIO == FIM) {
    return true
  } else {
    return false
  }
}

func adicionar(elemento int) bool {
  if (cheia()) {
    return false
  } else {
    MATRIZ[INICIO] = elemento
    INICIO++
    return true
  }
}

func retirar(elemento *int) bool {
  if (vazia()) {
    return false
  } else {
    INICIO--
    *elemento = MATRIZ[0]
    for I = 0; I <= INICIO - 1; I++ {
      MATRIZ[I] = MATRIZ[I + 1]
    }
    return true
  }
}

func entrada() {
  var X int
  fmt.Print("Entre com um elemento numerico: ")
  fmt.Scan(&X)
  fmt.Println()
  if (adicionar(X)) {
    fmt.Printf("Elemento %d inserido na posicao %d.\n", X, INICIO)
  } else {
    fmt.Printf("Impossivel adicionar %d - fila lotada.\n", X)
  }
  fmt.Println()
}

func saida() {
  var elemento int
  if (retirar(&elemento)) {
    fmt.Printf("Elemento %d retirado do inicio da fila.\n", elemento)
  } else {
    fmt.Print("Impossivel retirar elemento - fila vazia.\n")
  }
  fmt.Println()
}

func atual() {
  if (!(vazia())) {
    fmt.Printf("%d - primeiro elemento da fila.\n", MATRIZ[0])
  } else {
    fmt.Print("Impossivel apresentar - fila vazia.\n")
  }
  fmt.Println()
}

func exibicao() {
  if (!(vazia())) {
    for I = 0; I <= INICIO - 1; I++ {
      fmt.Printf("Posicao: %2d = %d\n", I + 1, MATRIZ[I])
    }
  } else {
    fmt.Print("Impossivel apresentar - fila vazia.\n")
  }
  fmt.Println()
}

func criar() {
  INICIO = 0
  for I = 0; I <= FIM - 1; I++ {
    MATRIZ[I] = 0
  }
}

func main() {
  criar()
  var OPCAO int
  for (OPCAO != 6) {
    fmt.Print("PROGRAMA: FILA\n\n")
    fmt.Print("[1] - Entrada\n")
    fmt.Print("[2] - Saida\n")
    fmt.Print("[3] - Apresentar 1o. da fila\n")
    fmt.Print("[4] - Apresentar a fila\n")
    fmt.Print("[5] - Nova fila\n")
    fmt.Print("[6] - Sair\n\n")
    fmt.Print("Escolha uma opcao: ")
    fmt.Scan(&OPCAO)
    fmt.Println()

    if (OPCAO != 6) {
      switch (OPCAO) {
      case 1: entrada()
      case 2: saida()
      case 3: atual()
      case 4: exibicao()
      case 5: criar()
      case 6: break
      default:
        fmt.Print("Opcao invalida. Tente novamente.\n")
        fmt.Println()
      }
    }
  }
}
