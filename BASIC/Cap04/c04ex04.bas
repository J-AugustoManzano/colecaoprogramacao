' c04ex04.bas

Dim N1 As Single, N2 As Single, N3 As Single, N4 As Single
Dim NE As Single, MD1 As Single, MD2 As Single

Input "Entre a 1a. nota .......: ", N1
Input "Entre a 2a. nota .......: ", N2 
Input "Entre a 3a. nota .......: ", N3
Input "Entre a 4a. nota .......: ", N4
Print

MD1 = (N1 + N2 + N3 + N4) / 4

If (MD1 >= 7) Then
    Print "Aprovado"
    Print Using "Media: ##.##"; MD1
Else
    Input "Entre a nota de exame ..: ", NE
    Print
    MD2 = (MD1 + NE) / 2
    If (MD2 >= 5) Then
        Print "Aprovado em exame"
    Else
        Print "Reprovado"
    End If
    Print Using "Media: ##.##"; MD2
End If

Print
Print "Tecle <Enter> para encerrar... ";
Getkey
