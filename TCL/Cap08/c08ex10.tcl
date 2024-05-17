# c08ex10.tcl

proc FibonacciBase {N X Y} {
  if {$N == 0} {
    return $X
  } elseif {$N == 1} {
    return $Y
  } else {
    return [FibonacciBase [expr {$N - 1}] $Y [expr {$X + $Y}]]
  }
}

proc Fibonacci {N} {
  return [FibonacciBase $N 0 1]
}

for {set I 0} {$I <= 14} {incr I} {
  puts [format "%2d - %d" $I [Fibonacci $I]]
}

puts -nonewline "\nTecle <Enter> para encerrar... "
flush stdout
gets stdin
