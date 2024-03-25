# c02ex01.awk 

BEGIN {

    # Operadores binarios 
    
    print 5 + 3       # Saída: 8
    print 10 - 4      # Saída: 6
    print 2 * 6       # Saída: 12
    print 10 / 3      # Saída: 3.3333333 (quociente real)
    print int(10 / 3) # Saída: 3 (quociente inteiro)
    print 10 % 3      # Saída: 1 (resto da divisão)

    # Operadores unários

    print +5          # Saída: 5 (mantém o sinal positivo)
    print -8          # Saída: -8 (inverte o sinal: negativo)

    # Exponenciação

    print 2 ** 3      # Saída: 8 (2 elevado a 3ª potência)
}

