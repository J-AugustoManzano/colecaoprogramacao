# c02ex01.pl

#!/usr/bin/perl

use strict;
use warnings;

# Operadores binários

print 5 + 3 . "\n";       # Saída: 8
print 10 - 4 . "\n";      # Saída: 6
print 2 * 6 . "\n";       # Saída: 12
print 10 / 3 . "\n";      # Saída: 3.3333... (quociente real)
print int(10 / 3) . "\n"; # Saída: 3 (quociente inteiro)
print 10 % 3 . "\n";      # Saída: 1 (resto da divisão)

# Operadores unários

print +5 . "\n";          # Saída: 5 (mantém sinal po-sit.)
print -8 . "\n";          # Saída: -8 (inverte sinal ne-gat.)

# Exponenciação

print 2 ** 3 . "\n";      # Saída: 8 (2 elevado a 3)
