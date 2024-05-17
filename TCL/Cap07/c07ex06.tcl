# c07ex06.tcl

proc FATORIAL {N} {
  set Fat 1
  for {set I 1} {$I <= $N} {incr I} {
    set Fat [expr {$Fat * $I}]
  }
  return $Fat
}

puts -nonewline "Qual fatorial: "
flush stdout
set Limite [gets stdin]

puts "Fatorial = [FATORIAL $Limite]"

puts -nonewline "\nTecle <Enter> para encerrar... "
flush stdout
gets stdin
