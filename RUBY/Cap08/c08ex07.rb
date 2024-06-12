# c08ex07.rb

#!/usr/bin/env ruby

LIMITE = 10
$matriz = Array.new(LIMITE)

def vazia
  if ($topo == -1)
    true
  else
    false
  end
end

def cheia
  if ($topo == LIMITE - 1)
    true
  else
    false
  end
end

def adicionar(elemento)
  if (cheia)
    false
  else
    $topo += 1
    $matriz[$topo] = elemento
    true
  end
end

def retirar(elemento)
  if (vazia)
    false
  else
    elemento[0] = $matriz[$topo]
    $topo -= 1
    true
  end
end

def empilhar
  print "Entre um elemento numerico: "
  x = gets.chomp.to_i
  puts "\n"
  if (adicionar(x))
    puts "Elemento #{x} inserido na posiçao #{$topo}."
  else
    puts "Impossivel adicionar #{x} - pilha cheia.\n"
  end
  puts
end

def desempilhar
  if (vazia)
    puts "Impossivel retirar elemento - pilha vazia.\n"
  else
    elemento = Array.new(1)
    if (retirar(elemento))
      puts "Elemento #{elemento[0]} removido do topo da pilha.\n"
    end
  end
  puts
end

def mostrar
  if (!(vazia))
    for i in $topo.downto(0)
      printf "Posicao %2d: %d\n", i+1, $matriz[i]
    end
  else
    puts "Impossivel mostrar - pilha vazia.\n"
  end
  puts
end

def criar
  $topo = -1
  for i in 1..(LIMITE - 1)
    $matriz[i] = 0
  end
end

criar
opcao = 0
while (opcao != 5)
  puts "PROGRAMA: PILHA\n\n"
  puts "[1] - Empilhar\n"
  puts "[2] - Desempilhar\n"
  puts "[3] - mostrar\n"
  puts "[4] - Criar pilha\n"
  puts "[5] - Sair\n\n"

  print "Escolha uma opcao: "
  opcao = gets.chomp.to_i
  puts "\n"

  if (opcao != 5)
    case (opcao)
    when 1
      empilhar
    when 2
      desempilhar
    when 3
      mostrar
    when 4
      criar
    end
  end
end
