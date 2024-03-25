# c04ex08.awk 

BEGIN {

  print "Escolha o tipo de transporte:"
  print ""
  print "[M] - Motocicleta"
  print "[S] - Scooter"
  print ""

  printf "==> "
  getline TRANSP < "-"

  print ""

  if (toupper(TRANSP) == "M" || toupper(TRANSP) == "S") {
    print "Transporte valido."
  } else {
    print "Transporte invalido."
  }

  print ""
  printf "Tecle <Enter> para encerrar... "
  getline < "-"

}
