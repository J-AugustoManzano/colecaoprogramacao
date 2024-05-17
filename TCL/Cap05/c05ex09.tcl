# c05ex09.tcl

for {set I 1} {$I <= 5} {incr I} {
  puts -nonewline "Entre um valor numerico: "
  flush stdout
  set N [gets stdin]

  set R [expr {$N * 3}]

  puts "Resultado = $R\n"
}

puts -nonewline "\nTecle <Enter> para encerrar... "
flush stdout
gets stdin
