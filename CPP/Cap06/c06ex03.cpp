// c06ex03.cpp

#include <iostream>
#include <iomanip>
using namespace std;

typedef struct {
  string Nome;
  char Turma;
  int Sala;
  float Notas[4];
} Aluno;

int main(void) {
  Aluno ALUNO[8];
  int I, J;

  cout << fixed << setprecision(1);

  cout << "Escola de Computacao XPTO" << endl;
  cout << "Cadastro Escolar de Aluno" << endl << endl;

  for (I = 0; I <= 7; ++I) {
    cout << "Aluno: " << I + 1 << endl << endl;

    cout << "Nome ..............: ";
    getline(cin, ALUNO[I].Nome);

    cout << "Turma .............: ";
    cin >> ALUNO[I].Turma;
    cin.ignore();

    cout << "Sala ..............: ";
    cin >> ALUNO[I].Sala;
    cin.ignore();

    cout << endl;

    for (J = 0; J <= 3; ++J) {
      cout << "Entre a " << J + 1 << "a. nota ..: ";
      cin >> ALUNO[I].Notas[J];
      cin.ignore();
    }

    cout << endl;
  }

  cout << "Escola de Computacao XPTO" << endl;
  cout << "Cadastro Escolar de Aluno" << endl << endl;
  cout << "DADOS DOS ALUNOS" << endl;

  cout << "Aluno ";
  cout << "Nome                           ";
  cout << "Sala ";
  cout << "Turma ";
  cout << "Nota1 ";
  cout << "Nota2 ";
  cout << "Nota3 ";
  cout << "Nota4" << endl;

  cout << "----- ";
  cout << "------------------------------ ";
  cout << "---- ";
  cout << "----- ";
  cout << "----- ";
  cout << "----- ";
  cout << "----- ";
  cout << "-----\n";

  for (I = 0; I <= 7; ++I) {
    cout << setw(5) << I + 1 << " ";
    cout << setw(30) << left << ALUNO[I].Nome << " ";
    cout << right;
    cout << setw(4) << ALUNO[I].Sala << " ";
    cout << setw(5) << ALUNO[I].Turma << " ";
    for (J = 0; J <= 3; ++J) {
      cout << setw(5) << ALUNO[I].Notas[J] << " ";
    }
    cout << endl;
  }

  cout << endl << "Tecle <Enter> para encerrar... ";
  cin.get();

  return 0;
}
