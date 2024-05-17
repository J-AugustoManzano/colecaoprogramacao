# c08ex01.tcl

proc validaInteiro {Numero} {
  if {[string is digit $Numero]} {
    return 1
  }
  return 0
}

while {1} {
  puts -nonewline "Entre um valor numerico inteiro: "
  flush stdout
  set Numero [gets stdin]

  if {[string length $Numero] == 0} {
    puts "\nErro: Tecla <Enter> acionada acidentalmente."
    puts ""
    continue
  }

  if {![validaInteiro $Numero]} {
    puts "\nErro: Entre um numero inteiro."
    puts ""
    continue
  }

  break
}

puts "\nEntrada valida fornecida: $Numero"

puts -nonewline "\nTecle <Enter> para encerrar... "
flush stdout
gets stdin
