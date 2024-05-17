# c04ex05.tcl

puts -nonewline "Entre com um numero equivalente a um mes: "
flush stdout
set Mes [gets stdin]

switch $Mes {
  1 {
    puts "Janeiro"
  }
  2 {
    puts "Fevereiro"
  }
  3 {
    puts "Marco"
  }
  4 {
    puts "Abril"
  }
  5 {
    puts "Maio"
  }
  6 {
    puts "Junho"
  }
  7 {
    puts "Julho"
  }
  8 {
    puts "Agosto"
  }
  9 {
    puts "Setembro"
  }
  10 {
    puts "Outubro"
  }
  11 {
    puts "Novembro"
  }
  12 {
    puts "Dezembro"
  }
  default {
    puts "Mes invalido"
  }
}

puts -nonewline "\nTecle <Enter> para encerrar... "
flush stdout
gets stdin
