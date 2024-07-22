' c02ex01.vb

Module Program
    Sub Main(args As String())
        ' Operadores binários
        Console.WriteLine(5 + 3)    ' Saída: 8
        Console.WriteLine(10 - 4)   ' Saída: 6
        Console.WriteLine(2 * 6)    ' Saída: 12
        Console.WriteLine(10.0 / 3) ' Saída: 3.3333 (quociente real)
        Console.WriteLine(10 \ 3)   ' Saída: 3 (quociente inteiro)
        Console.WriteLine(10 Mod 3) ' Saída: 1 (resto da divisão)

        ' Operadores unários
        Console.WriteLine(+5)       ' Saída: 5 (mantém positivo)
        Console.WriteLine(-8)       ' Saída: -8 (inverte sinal)

        ' Exponenciação
        Console.WriteLine(Math.Pow(2, 3)) ' Saída: 8 (2 elevado a 3)
    End Sub
End Module
