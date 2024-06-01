' c04ex08.bas

Dim Transp As String

Print "Escolha o tipo de transporte:"
Print
Print "[M] - Motocicleta"
Print "[S] - Scooter"
Print

Input "==> ", Transp
Print

If (UCase$(Transp) = "M" Or UCase$(Transp) = "S") Then
    Print "Transporte valido."
Else
    Print "Transporte invalido."
End If

Print
Print "Tecle <Enter> para encerrar... ";
Getkey
