# c04ex08.tcl

puts "Escolha o tipo de transporte:\n\n"
puts [subst {\[M\] - Motocicleta}]
puts [subst {\[S\] - Scooter	}]
puts ""

puts -nonewline "==> "
flush stdout
set Transp [string toupper [gets stdin]]

if {[expr {$Transp == "M" || $Transp == "S"}]} {
  puts "\nTransporte valido."
} else {
  puts "\nTransporte invalido."
}

puts -nonewline "\nTecle <Enter> para encerrar... "
flush stdout
gets stdin
