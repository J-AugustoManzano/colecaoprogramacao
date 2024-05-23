// c05ex03.go

package main

import (
  "bufio"
  "fmt"
  "os"
  "strings"
)

type TAluno struct {
  Nome  string
  Turma string
  Sala  int
  Notas [4]float64
}	

var ALUNO [8]TAluno
var I, J int
var leAlfa *bufio.Reader
var entraNome []byte
var entraTurma []byte

func main() {
  fmt.Println("Escola de Computacao XPTO")
  fmt.Println("Cadastro Escolar de Aluno")
  fmt.Println()

  leAlfa = bufio.NewReader(os.Stdin)

  for I = 0; I <= 7; I++ {
    fmt.Println("Aluno:", I + 1)
    fmt.Println()

    fmt.Print("Nome ..............: ")
    entraNome, _, _ = leAlfa.ReadLine()
    ALUNO[I].Nome = strings.TrimSpace(string(entraNome))

    fmt.Print("Turma .............: ")
    entraTurma, _, _ = leAlfa.ReadLine()
    ALUNO[I].Turma = strings.TrimSpace(string(entraTurma))

    fmt.Print("Sala ..............: ")
    fmt.Scan(&ALUNO[I].Sala)
    fmt.Println()

    for J = 0; J <= 3; J++ {
      fmt.Printf("Entre a %da. nota ..: ", J + 1)
      fmt.Scan(&ALUNO[I].Notas[J])
    }

    fmt.Println()
  }

  fmt.Println("Escola de Computacao XPTO")
  fmt.Println("Cadastro Escolar de Aluno")
  fmt.Println()
  fmt.Println("DADOS DOS ALUNOS")
  fmt.Print("Aluno ")
  fmt.Print("Nome                           ")
  fmt.Print("Sala ")
  fmt.Print("Turma ")
  fmt.Print("Nota1 ")
  fmt.Print("Nota2 ")
  fmt.Print("Nota3 ")
  fmt.Print("Nota4 ")
  fmt.Println()
  fmt.Print("----- ")
  fmt.Print("------------------------------ ")
  fmt.Print("---- ")
  fmt.Print("----- ")
  fmt.Print("----- ")
  fmt.Print("----- ")
  fmt.Print("----- ")
  fmt.Print("----- ")
  fmt.Println()

  for I = 0; I <= 7; I++ {
    fmt.Printf("%5d ", I + 1)
    fmt.Printf("%-30s ", ALUNO[I].Nome)
    fmt.Printf("%4d ", ALUNO[I].Sala)
    fmt.Printf("%5s ", ALUNO[I].Turma)
    for J = 0; J <= 3; J++ {
      fmt.Printf("%5.1f ", ALUNO[I].Notas[J])
    }
    fmt.Println()
  }

  fmt.Println()
  fmt.Print("Tecle <Enter> para encerrar... ")
  fmt.Scanln()
}
