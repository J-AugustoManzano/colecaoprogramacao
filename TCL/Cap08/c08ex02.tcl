# c08ex02.tcl

proc validaNumero {Numero} {
  if {[regexp {^[0-9]+(\.[0-9]+)?$} $Numero]} {
    return 1
  }
  return 0
}

while {1} {
  puts -nonewline "Entre um valor numerico: "
  flush stdout
  set Numero [gets stdin]

  if {[string length $Numero] == 0} {
    puts "\nErro: Tecla <Enter> acionada acidentalmente."
    puts ""
    continue
  }

  if {![validaNumero $Numero]} {
    puts "\nErro: Entre um valor numerico."
    puts ""
    continue
  }

  break
}

puts "\nEntrada valida fornecida: $Numero"

puts -nonewline "\nTecle <Enter> para encerrar... "
flush stdout
gets stdin
