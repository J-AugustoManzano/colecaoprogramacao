/* c02ex02.rex */

/* Funcoes matematicas (algumas) */

say Abs(-9)                   /* Saida: 9 */

call RxFuncAdd "MathLoadFuncs", "rxmath"

say RxCalcArcCos(-1,  , D)    /* Saida: 180 (unidade grau)*/
say RxCalcArcCos(-1, 4, R)    /* Saida: 3.142 (radiano) */
say RxCalcArcCos(-1,  , G)    /* Saida: 200.00 (grau) */
say RxCalcCos(1,  , D)        /* Saida: 0.999847695 */
say RxCalcCos(1, 6, R)        /* Saida: 0.540302 */
say RxCalcCos(1, 5, G)        /* Saida: 0.99988 */
say RxCalcExp(1)              /* Saida: 2.71828183 */
say RxCalcExp(1, 4)           /* Saida: 2.718 */
say RxCalcLog(2)              /* Saida: 0.693147181 */
say RxCalcLog10(2)            /* Saida: 0.301029996 */
say RxCalcPi()                /* Saida: 3.14159265 */
say RxCalcPi(3)               /* Saida: 3.14 */
say RxCalcPower(25, 1 / 2)    /* Saida: 5 (raiz quadrada) */
say RxCalcPower(25, 1 / 3, 3) /* Saida: 2.92 (raiz cubica) */
