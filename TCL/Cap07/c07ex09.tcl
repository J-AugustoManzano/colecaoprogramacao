# c07ex09.tcl

proc FATORIAL_BASE {N P} {
  if {$N == 0} {
    return $P
  } else {
    return [FATORIAL_BASE [expr {$N - 1}] [expr {$N * $P}]]
  }
}

proc FATORIAL {N} {
  return [FATORIAL_BASE $N 1]
}

puts -nonewline "Qual fatorial: "
flush stdout
set Limite [gets stdin]

puts "Fatorial = [FATORIAL $Limite]"

puts -nonewline "\nTecle <Enter> para encerrar... "
flush stdout
gets stdin
