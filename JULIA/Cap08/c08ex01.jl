# c08ex01.jl

function caractere_especial(entra::String)::Bool
  caracteres_especiais = "!@#\$%^&*()-_=+[]{}|;:',<>/?`~\""
  for caractere in caracteres_especiais
    if occursin(caractere, entra)
      return true
    end
  end
  return false
end

function valida_inteiro(entra::String)::Bool
  return occursin(r"\A\d+\z", entra)
end

while true
  print("Entre um valor numerico inteiro: ")
  numero = readline()
  println()

  if isempty(numero)
    println("Erro: Tecla <Enter> acionada acidentalmente.\n")
  elseif caractere_especial(numero)
    println("Erro: Caractere especial nao permitido.\n")
  elseif valida_inteiro(numero)
    println("entra valida fornecida: $numero\n")
    break
  else
    println("Erro: Entre um numero inteiro.\n")
  end
end

print("\nTecle <Enter> para encerrar... ")
readline()
