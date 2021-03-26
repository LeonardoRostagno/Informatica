/* Dato un numero binario convertirlo in decimale */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int conversione (int bit) {
    int b = bit;
    int dec = 0;
    int esp = 0;

    while (b > 0) {
        float R = b % 10;

        if (R != 0) {
            dec += pow(2, esp);
        }
        b = b / 10;
        esp++;
    }
    return dec;
}

int main (){
    int bit; 
    int dec;

    printf("Inserire il numero binario (ricorda che non può iniziare per 0): ");
    scanf("%d", &bit);

    dec = conversione(bit);

    printf("Il numero %d binario e' stato convertito in %d decimale", bit, Dec);

    return 0;
}