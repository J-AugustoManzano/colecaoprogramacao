<?php
// c02ex07.php

$frase = "Aprendendo PHP com o Professor Manzano";
$palavras = array_fill(0, 4, str_pad('', 10));

printf("Frase ......: %s\n", $frase);
printf("              ------------------------------------\n");
printf("              000000000111111111122222222223333333\n");
printf("              012345678901234567890123456789012345\n");
printf("\n");

printf("Tamanho ....: %d caracteres\n", strlen($frase));
printf("\n");

$palavrasEncontradas = explode(" ", $frase, 4);
$palavras[0] = str_pad($palavrasEncontradas[0], 20, ' ');
$palavras[1] = str_pad($palavrasEncontradas[1], 20, ' ');
$palavras[2] = str_pad($palavrasEncontradas[2], 20, ' ');
$palavras[3] = str_pad($palavrasEncontradas[3], 20, ' ');

printf("Palavra 1 .............: %s\n", $palavras[0]);
printf("Palavra 2 .............: %s\n", $palavras[1]);
printf("Palavra 3 .............: %s\n", $palavras[2]);
printf("Palavra 4 .............: %s\n", $palavras[3]);
printf("\n");

printf("Letra 1 da Palavra 1 ..: %s\n", $palavras[0][0]);
printf("Letra 2 da Palavra 1 ..: %s\n", $palavras[0][1]);
printf("Letra 3 da Palavra 1 ..: %s\n", $palavras[0][2]);
printf("Letra 4 da Palavra 1 ..: %s\n", $palavras[0][3]);
printf("\n");

printf("A palavra 'PHP' na posicao: %d\n", (strpos($frase, "PHP") + 1));

printf("\n");
printf("Tecle <Enter> para encerrar... ");
trim(fgets(STDIN));

?>
