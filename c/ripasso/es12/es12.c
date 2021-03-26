/* Calcolare la somma degli elementi di posizione pari e quelli di posizione dispari di un vettore;*/
#include <stdio.h>
#include <stdlib.h>

int calcolo (int dim, int *arr) {
    int sommaP = 0;
    int sommaD = 0;

    for (size_t a = 0; a < dim / 2; a++) {
        sommaP = sommaP + arr[2*a];
        sommaD = sommaD + arr[2*a + 1];
    }

    return sommaP;
}

int main () {
    int dim;
    int num;
    int somma = 0;

    do {
        printf("Inserire un valore positivo per la dimensione dell'array:");
        scanf("%d", &dim);
    } while (dim <= 0);

    int arr[dim];

    for(size_t b = 0; b < dim; b++) {
        printf("Inserire il valore dell'array alla posizione %d: ", b);
        scanf("%d", &num;);

        arr[b] = num;
        somma += num;
    }

    int somma_pari = calcolo(dim, &arr);

    int somma_disp = somma - somma_pari;

    printf("Somma pari --> %d\nSomma dispari --> %d\n", somma_pari, somma_disp);

    return 0;
}