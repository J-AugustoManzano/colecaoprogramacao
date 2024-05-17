# c07ex05.tcl

proc FATORIAL {N Fat} {
  upvar $Fat fatAux
  set Fat 1
  for {set I 1} {$I <= $N} {incr I} {
    set fatAux [expr {$fatAux * $I}]
  }
}

set Resp 1

puts -nonewline "Qual fatorial: "
flush stdout
set Limite [gets stdin]

FATORIAL $Limite Resp

puts "Fatorial = $Resp"

puts -nonewline "\nTecle <Enter> para encerrar... "
flush stdout
gets stdin
