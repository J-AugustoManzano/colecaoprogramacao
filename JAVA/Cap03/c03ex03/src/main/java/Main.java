// Projeto: c03ex03

import java.util.Scanner;
import static java.lang.System.out;

public class Main {
    public static void main(String[] args) {
        double HT, VH, PD, SB, TD, SL;

        Scanner entrada = new Scanner(System.in);

        out.print("Entre quantidade de horas trabalhadas ..: ");
        HT = entrada.nextDouble();
        entrada.nextLine(); 
      
        out.print("Entre valor do salario-hora ............: ");
        VH = entrada.nextDouble();
        entrada.nextLine(); 

        out.print("Entre valor do percentual de desconto ..: ");
        PD = entrada.nextDouble();
        entrada.nextLine(); 

        SB = HT * VH;
        TD = (PD / 100) * SB;
        SL = SB - TD;

        out.printf("\nSalario Bruto ....: %.2f\n", SB);
        out.printf("Salario Liquido ..: %.2f\n", SL);

        out.print("\nTecle <Enter> para encerrar... ");
        entrada.nextLine(); 
    }
}
