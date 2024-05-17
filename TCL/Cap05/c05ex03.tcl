# c05ex03.tcl

set I 1
while {![expr {$I > 5}]} {

  puts -nonewline "Entre um valor numerico: "
  flush stdout
  set N [gets stdin]

  set R [expr {$N * 3}]

  puts "Resultado = $R\n"

  incr I
}

puts -nonewline "\nTecle <Enter> para encerrar... "
flush stdout
gets stdin
