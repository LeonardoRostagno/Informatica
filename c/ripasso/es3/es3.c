/* Dato in input un numero intero N, sommare i primi N numeri dispari e verificare che tale somma è uguale al quadrato di N */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int potenza (int num) {
    int somma = 0;
    size_t a;

    for (a = 0; a <= num; a++) {
        somma += (2 * a) + 1;
    }
    return somma;
}

int main () {
    int num;
    
    printf("Inserire il numero da prendere in esame: ");
    scanf("%d", &num);

    int S = potenza(num);
    int pow = num * num;

    if (S == pow) {
        printf("Il quadrato di %d e' uguale alla somma %d dei primi %d numeri dispari\n", num, S, num);
    }
    else {
        printf("Il quadrato di %d non e' uguale alla somma %d dei primi %d numeri dispari\n", num, S, num);
    }

    return 0;
}