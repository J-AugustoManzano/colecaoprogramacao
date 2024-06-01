' c06ex03.bas

Type Aluno
    Nome As String * 30
    Turma As String * 5 
    Sala As Integer
    Notas(1 To 4) As Single
End Type

Dim ALUNO(1 To 8) As Aluno
Dim I As Integer, J As Integer

Print "Escola de Computacao XPTO"
Print "Cadastro Escolar de Aluno"
Print

For I = 1 To 8 Step 1
    Print "Aluno: "; I
    Print

    Print "Nome ..............: "; 
    Input "", ALUNO(I).Nome
    Print "Turma .............: "; 
    Input "", ALUNO(I).Turma 
    Print "Sala ..............: "; 
    Input "", ALUNO(I).Sala
    Print

    For J = 1 To 4
        Print "Entre a " & J & "a. nota ..: "; 
        Input "", ALUNO(I).Notas(J)
    Next J

    Print
Next I

Print "Escola de Computacao XPTO"
Print "Cadastro Escolar de Aluno"  
Print
Print "DADOS DOS ALUNOS"
Print "Aluno ";
Print "Nome                           ";
Print "Sala ";
Print "Nota1 ";
Print "Nota2 ";
Print "Nota3 ";
Print "Nota4 "
Print "----- ";
Print "------------------------------ ";
Print "---- ";
Print "----- ";
Print "----- ";
Print "----- ";
Print "-----"

For I = 1 To 8
    Print Using "##### "; I;
    Print Left$(ALUNO(I).NOME + String$(30, " "), 31); 
    Print Using "#### "; ALUNO(I).Sala;
    Print Using "#####"; ALUNO(I).Turma;
    For J = 1 To 4
        Print Using "###.# "; ALUNO(I).Notas(J);
    Next J
    Print
Next I

Print 
Print "Tecle <Enter> para encerrar... ";
Getkey
