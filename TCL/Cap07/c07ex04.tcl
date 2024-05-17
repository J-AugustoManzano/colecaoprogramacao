# c07ex04.tcl

proc Fatorial {N} {
  set Fat 1
  for {set I 1} {$I <= $N} {incr I} {
    set Fat [expr {$Fat * $I}]
  }
  puts "Fatorial = $Fat"
}

puts -nonewline "Qual fatorial: "
flush stdout
set Limite [gets stdin]

Fatorial $Limite

puts -nonewline "\nTecle <Enter> para encerrar... "
flush stdout
gets stdin
