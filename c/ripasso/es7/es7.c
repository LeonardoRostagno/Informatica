/* dato un numero N, stabilire se primo */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int primo (int num) {
    int contD = 0;
    float R;
    int a;

    for (a = 1; a < num; a++) {
        R = num % a;

        if (R == 0) {
            contD++;
        }
    }
    return contD;
}

int main () {
    int num;
    FILE *ptr_in;

    ptr_in = fopen("es7.txt", "r");

    if (ptr_in) {
        printf("ERRORE FILE...\n");
    }
    else {
        printf("FILE OK!\n");
    }

    while (!feof(ptr_in)) {
        fscanf(ptr_in, "%d", &num);
    }

    int cont = primo(num);

    if (cont == 2) {
        fflush(stdin);
        printf("Il numero %d e' primo\n", num);
    }
    else {
        fflush(stdin);
        printf("Il numero %d non e' primo\n", num);
    }

    fclose (ptr_in);
    return 0;
}