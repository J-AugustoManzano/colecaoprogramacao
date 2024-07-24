// Projeto: c08ex01

import java.util.Scanner;
import static java.lang.System.out;
import java.util.regex.Pattern;

public class Main {

    static boolean validaInteiro(String entrada) {
        return Pattern.compile("^[+-]?\\d+$").matcher(entrada).matches();
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        String numero;

        while (true) {
            out.print("Entre um valor numerico inteiro: ");
            numero = scanner.nextLine();
            out.println();

            if (numero.isEmpty()) {
                out.println("Erro: Tecla <Enter> acionada acidentalmente.");
                out.println();
                continue;
            }

            if (!validaInteiro(numero)) {
                out.println("Erro: Entre um valor numerico.\n");
                continue;
            }

            break;
        }

        out.println("Entrada valida fornecida: " + numero);

        out.print("\nTecle <Enter> para encerrar... ");
        scanner.nextLine();
    }
}