# c06ex01.tcl

array set MD {}
set SOMA 0.0

for {set I 0} {$I <= 7} {incr I} {
  puts -nonewline "Entre a media do aluno [expr {$I + 1}]: "
  flush stdout
  set MD($I) [gets stdin]
  set SOMA [expr {$SOMA + $MD($I)}]
}

set MEDIA [expr {$SOMA / 8.0}]

puts "\nMedia geral: [format "%.2f" $MEDIA]"

puts -nonewline "\nTecle <Enter> para encerrar... "
flush stdout
gets stdin
