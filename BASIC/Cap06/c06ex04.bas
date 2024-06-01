' c06ex04.bas

Dim A() As String
Dim N As Integer, I As Integer

Print "Entre a quantidade de elementos da matriz: ";
Input "", N
Print

Redim A(1 To N)

For I = 1 To N
    Print "Entre o " & I & "o. nome: ";
    Input "", A(I)
Next I

Print
Print "Foram fornecidos os nomes:"
Print

For I = 1 To N
    Print "Nome " & I & " = "; A(I)
Next I

Print 
Print "Tecle <Enter> para encerrar... ";
Getkey
