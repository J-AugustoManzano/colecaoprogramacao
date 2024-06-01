' c06ex01.bas

Dim MD(1 To 8) As Single
Dim SOMA As Single, MEDIA As Single
Dim I As Integer

SOMA = 0
For I = 1 To 8
    Print "Entre a media do aluno " & I & ": ";
    Input "", MD(I)
    SOMA = SOMA + MD(I)
Next I

MEDIA = SOMA / 8

Print
Print "Media geral: "; Using "##.##"; MEDIA

Print 
Print "Tecle <Enter> para encerrar... ";
Getkey
