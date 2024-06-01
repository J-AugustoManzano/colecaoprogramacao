' c06ex02.bas

Dim NOTAS(1 To 8, 1 To 4) As Single
Dim I As Integer, J As Integer

For I = 1 To 8
    Print "Entre as notas do aluno " & I & ":"
    For J = 1 To 4
        Print "Nota " & J & ": ";
        Input "", NOTAS(I, J)
    Next J
    Print
Next I

Print
Print "RELATORIO DE NOTAS"
Print
Print "Aluno Nota1 Nota2 Nota3 Nota4"
Print "----- ----- ----- ----- -----"
For I = 1 To 8
    Print Using "#####"; I; 
    For J = 1 To 4
        Print Using "####.#"; NOTAS(I, J); 
    Next J
    Print
Next I

Print 
Print "Tecle <Enter> para encerrar... ";
Getkey
