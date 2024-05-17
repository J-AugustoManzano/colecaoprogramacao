# c06ex03.tcl

array set ALUNO {}

puts "Escola de Computacao XPTO"
puts "Cadastro Escolar de Aluno"
puts ""

for {set I 0} {$I <= 7} {incr I} {

  puts "Aluno: [expr {$I + 1}]"
  puts ""

  puts -nonewline "Nome ..............: "
  flush stdout
  set ALUNO($I,Nome) [gets stdin]

  puts -nonewline "Turma .............: "
  flush stdout
  set ALUNO($I,Turma) [gets stdin]

  puts -nonewline "Sala ..............: "
  flush stdout
  set ALUNO($I,Sala) [gets stdin]

  puts ""

  for {set J 0} {$J <= 3} {incr J} {
    puts -nonewline "Entre a [expr {$J+1}]a. nota ..: "
    flush stdout
    set notaAux [gets stdin]
    lappend ALUNO($I,Notas) $notaAux
  }

  puts ""
}

puts "Escola de Computacao XPTO"
puts "Cadastro Escolar de Aluno"
puts ""
puts "DADOS DOS ALUNOS\n"

puts -nonewline "Aluno "
puts -nonewline "Nome                           "
puts -nonewline "Sala "
puts -nonewline "Turma "
puts -nonewline "Nota1 "
puts -nonewline "Nota2 "
puts -nonewline "Nota3 "
puts "Nota4"

puts -nonewline "----- "
puts -nonewline "------------------------------ "
puts -nonewline "---- "
puts -nonewline "----- "
puts -nonewline "----- "
puts -nonewline "----- "
puts -nonewline "----- "
puts "-----\n"

for {set I 0} {$I <= 7} {incr I} {
  puts -nonewline "[format "%5d " [expr {$I + 1}]]"
  puts -nonewline "[format "%-30s " $ALUNO($I,Nome)]"
  puts -nonewline "[format "%4d " $ALUNO($I,Sala)]"
  puts -nonewline "[format "%5s" $ALUNO($I,Turma)]" 

  for {set J 0} {$J <= 3} {incr J} {
    puts -nonewline "[format "%6.1f" [lindex $ALUNO($I,Notas) $J]]"
  }

  puts ""
}

puts -nonewline "\nTecle <Enter> para encerrar... "
flush stdout
gets stdin
