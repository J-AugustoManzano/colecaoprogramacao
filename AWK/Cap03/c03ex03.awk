# c03ex03.awk 

BEGIN {

  printf "Entre quantidade de horas trabalhadas ..: " 
  getline HT < "-"
    
  printf "Entre valor do salario-hora ............: " 
  getline VH < "-"
    
  printf "Entre valor do percentual de desconto ..: " 
  getline PD < "-"
    
  SB = HT * VH
  TD =  PD / 100  * SB
  SL = SB - TD
    
  printf "\nSalario Bruto ....: %f\n", SB 
  printf "Salario Liquido ..: %f\n\n", SL 
   
  printf "Tecle <Enter> para encerrar... " 
  getline < "-"
    
}
