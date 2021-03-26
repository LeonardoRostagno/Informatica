/* Invertire un vettore A senza usare un vettore di appoggio */

#include <stdio.h>
#include <stdlib.h>

int main () {
    int DIM, num, var;

    printf("Inserire la lunghezza del vettore: ");
    scanf("%d", &DIM);
    int arr[DIM];

    for (size_t a = 0; a <= DIM; a++) {
        printf("Inserire numero: ");
        scanf("%d", &num);
        arr[a] = num;
    }

    for (size_t b = 0; b < DIM / 2; b++) {
        var = arr[b];
        arr[b] = arr[DIM - b];
        arr[DIM - b] = var;
    }

    printf("\n\tStampa Array in corso...\n");
    fflush(stdin);

    for (size_t c = 0; c <= DIM; c++) {
        printf("%d", arr[c]);
    }

    return 0;
}