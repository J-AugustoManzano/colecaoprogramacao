# c08ex08.rb

#!/usr/bin/env ruby

LIMITE = 10
$matriz = Array.new(LIMITE)

def vazia
  if ($inicio == -1)
    true
  else
    false
  end
end

def cheia
  if ($inicio == LIMITE - 1)
    true
  else
    false
  end
end

def adicionar(elemento)
  if (cheia)
    false
  else
    $inicio += 1
    $matriz[$inicio] = elemento
    true
  end
end

def retirar(elemento)
  if (vazia)
    false
  else
    elemento = $matriz[0]
    for i in 1..$inicio - 1
      $matriz[i] = $matriz[i + 1]
    end
    $inicio -= 1
    true
  end
end

def entrada
  print "Entre um elemento numerico: "
  x = gets.chomp.to_i
  puts "\n"
  if (adicionar(x))
    puts "Elemento #{x} inserido na posicao #{$inicio}."
  else
    puts "Impossivel adicionar #{x} - fila lotada."
  end
  puts
end

def saida
  if (vazia)
    puts "Impossivel retirar elemento - fila vazia."
  else
    elemento = $matriz[1]
    for i in 0..$inicio - 1
      $matriz[i] = $matriz[i + 1]
    end
    $inicio -= 1
    puts "Elemento #{elemento} retirado do inicio da fila."
  end
  puts
end

def atual
  if (!vazia)
    puts "#{$matriz[0]} - primeiro elemento da fila."
  else
    puts "Impossivel apresentar - fila vazia."
  end
  puts
end

def exibicao
  if (!vazia)
    for i in 0..$inicio
      printf "Posicao: %2d: possui o elemento %d.\n", i + 1, $matriz[i]
    end
  else
    puts "Impossivel apresentar - fila vazia."
  end
  puts
end

def criar
  $inicio = 0
  for i in 0..(LIMITE - 1)
    $matriz[i] = 0
  end
end

criar
opcao = 0
while (opcao != 6)
  puts "PROGRAMA: FILA\n\n"
  puts "[1] - Entrada\n"
  puts "[2] - Saida\n"
  puts "[3] - Apresentar 1o. da fila\n"
  puts "[4] - Apresentar a fila\n"
  puts "[5] - Nova fila\n"
  puts "[6] - Sair\n\n"

  print "Escolha uma opcao: "
  opcao = gets.chomp.to_i
  puts "\n"

  if (opcao != 6)
    case (opcao)
    when 1
      entrada
    when 2
      saida
    when 3
      atual
    when 4
      exibicao
    when 5
      criar
      puts
    end
  end
end
