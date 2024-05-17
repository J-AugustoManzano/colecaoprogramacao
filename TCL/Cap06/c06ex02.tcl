# c06ex02.tcl

array set NOTAS {}

for {set I 0} {$I <= 7} {incr I} {
  puts "Entre as notas do aluno [expr {$I + 1}]: "
  for {set J 0} {$J <= 3} {incr J} {
    puts -nonewline "Nota [expr {$J + 1}]: "
    flush stdout
    set NOTAS($I,$J) [gets stdin]
  }
  puts ""
}

puts "RELATORIO DE NOTAS\n"
puts "Aluno Nota1 Nota2 Nota3 Nota4"
puts "----- ----- ----- ----- -----\n"

for {set I 0} {$I <= 7} {incr I} {
  puts -nonewline "[format {%-5d} [expr {$I + 1}]]"
  for {set J 0} {$J <= 3} {incr J} {
    puts -nonewline "[format {%6.1f} $NOTAS($I,$J)]"
  }
  puts ""
}

puts -nonewline "\nTecle <Enter> para encerrar... "
flush stdout
gets stdin
