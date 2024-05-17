# c05ex08.tcl

set RESP "S"
while {1} {
  puts -nonewline "Entre um valor numerico: "
  flush stdout
  set N [gets stdin]

  set R [expr {$N * 3}]

  puts "Resultado = $R\n"

  puts -nonewline "Deseja continuar? (S/N): "
  flush stdout
  set RESP [gets stdin]

  puts ""
  
  if {![expr {[string toupper $RESP] == "S"}]} {break}
}

puts -nonewline "\nTecle <Enter> para encerrar... "
flush stdout
gets stdin
