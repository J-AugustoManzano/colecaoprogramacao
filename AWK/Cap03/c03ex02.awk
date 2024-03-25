# c03ex02.awk 

BEGIN {

  PI = atan2(0, -1) # 3.14159265...
    
  printf "Entre valor do raio: "
  getline R < "-"
    
  A = PI * R ** 2
    
  printf "Resultado = %f\n\n", A
    
  printf "Tecle <Enter> para encerrar... "
  getline < "-"
    
}
