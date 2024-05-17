# c05ex05.tcl

set I 1
while {1} {
  puts -nonewline "Entre um valor numerico: "
  flush stdout
  set N [gets stdin]

  set R [expr {$N * 3}]

  puts "Resultado = $R\n"

  incr I

  if {![expr {$I <= 5}]} {break}
}

puts -nonewline "\nTecle <Enter> para encerrar... "
flush stdout
gets stdin
