// Projeto: c04ex11

import java.util.Scanner;
import static java.lang.System.out;

public class Main {
    public static void main(String[] args) {
        int N, R4, R5;
        Scanner entrada = new Scanner(System.in);

        out.print("Entre um numero inteiro: ");
        N = entrada.nextInt();
        entrada.nextLine();

        R4 = N % 4;
        R5 = N % 5;

        if (R4 == 0 && R5 == 0)
            out.println("Resultado = " + N);
        else
            out.println("Valor nao e divisivel por 4 e 5");

        out.print("\nTecle <Enter> para encerrar... ");
        entrada.nextLine();
    }
}