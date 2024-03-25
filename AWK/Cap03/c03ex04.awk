# c03ex04.awk 

BEGIN {

  printf "Entre quantidade de horas trabalhadas ..: " 
  getline HT < "-"
    
  printf "Entre valor do salario-hora ............: " 
  getline VH < "-"
    
  printf "Entre valor do percentual de desconto ..: " 
  getline PD < "-"
    
  SB = HT * VH
  TD = (PD / 100  * SB
  SL = SB - TD
    
  printf "\nSalario Bruto ....: %8.2f\n", SB 
  printf "Salario Liquido ..: %8.2f\n\n", SL 
   
  printf "Tecle <Enter> para encerrar... " 
  getline < "-"
    
}
