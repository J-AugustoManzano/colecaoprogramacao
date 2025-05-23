# c08ex09.tcl

proc Fibonacci {N} {
  if {$N == 0} {
    return 0
  }
  if {$N == 1} {
    return 1
  }
  if {$N >= 2} {
    return [expr {[Fibonacci [expr {$N - 1}]] + [Fibonacci [expr {$N - 2}]]}]
  }
  return 0 ;# valor padrão para evitar erro
}

for {set I 0} {$I <= 14} {incr I} {
  puts [format "%2d - %d" $I [Fibonacci $I]]
}

puts -nonewline "\nTecle <Enter> para encerrar... "
flush stdout
gets stdin
