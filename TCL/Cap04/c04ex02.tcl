# c04ex02.tcl

puts -nonewline "Entre o 1o. valor numerico: "
flush stdout
set A [gets stdin]

puts -nonewline "Entre o 2o. valor numerico: "
flush stdout
set B [gets stdin]

if {$A > $B} {
  set X $A
  set A $B
  set B $X
}

puts "Os valores sao: $A e $B."

puts -nonewline "\nTecle <Enter> para encerrar... "
flush stdout
gets stdin
