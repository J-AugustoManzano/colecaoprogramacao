# c06ex04.tcl

array set A {}

puts -nonewline "Entre a quantidade de elementos da matriz: "
flush stdout
set N [gets stdin]

puts ""
for {set I 0} {$I <= $N - 1} {incr I} {
  puts -nonewline "Entre o [expr {$I + 1}]o. nome: "
  flush stdout
  set A($I) [gets stdin]
}

puts "\n"
puts "Foram fornecidos os nomes:\n"

for {set I 0} {$I <= $N - 1} {incr I} {
  puts "Nome [expr {$I+1}] = $A($I)"
}

puts -nonewline "\nTecle <Enter> para encerrar... "
flush stdout
gets stdin
