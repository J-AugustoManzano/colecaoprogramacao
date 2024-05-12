<?php
// c02ex06.php

$palavra = "COMPUTADOR";

printf("Palavra ........: %s\n", $palavra);
printf("\n");
printf("Lado esquerdo ..: %s\n", substr($palavra, 0, 3));
printf("Centro .........: %s\n", substr($palavra, 3, 4));
printf("Lado direito ...: %s\n", substr($palavra, 7, 3));
printf("Reverso ........: %s\n", strrev($palavra));
printf("Copias .........: %s\n", implode('', array_fill(0, 3, $palavra)));
printf("Nova palavra ...: %s\n", str_replace("A", "O", $palavra));

printf("\n");
printf("Tecle <Enter> para encerrar... ");
trim(fgets(STDIN));

?>
