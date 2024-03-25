# c04ex04.awk 

BEGIN {

  printf "Entre a 1a. nota .......: "
  getline N1 < "-"

  printf "Entre a 2a. nota .......: "
  getline N2 < "-"

  printf "Entre a 3a. nota .......: "
  getline N3 < "-"

  printf "Entre a 4a. nota .......: "
  getline N4 < "-"

  MD1 = (N1 + N2 + N3 + N4) / 4

  if (MD1 >= 7) {
      print ""
      print "Aprovado"
      print "Media: " substr(sprintf("%.2f", MD1), 1, 5)
  } else {
      printf "Entre a nota de exame ..: "
      getline NE < "-"
      MD2 = (MD1 + NE) / 2
      if (MD2 >= 5) {
          print ""
          print "Aprovado em exame"
      } else {
          print ""
          print "Reprovado"
      }
      print "Media: " substr(sprintf("%.2f", MD2), 1, 5)
  }

  print ""
  printf "Tecle <Enter> para encerrar... "
  getline < "-"

}
