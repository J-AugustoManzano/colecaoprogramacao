# c07ex08.tcl

proc FATORIAL {N} {
  if {$N == 0} {
    return 1
  } else {
    return [expr {$N * [FATORIAL [expr {$N - 1}]]}]
  }
}

puts -nonewline "Qual fatorial: "
flush stdout
set Limite [gets stdin]

puts "Fatorial = [FATORIAL $Limite]"

puts -nonewline "\nTecle <Enter> para encerrar... "
flush stdout
gets stdin
