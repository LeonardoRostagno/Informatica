/* Dato un vettore A di interi creare i vettori PARI e DISPARI formati rispettivamente dagli elementi pari e dispari presenti in A */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

void riempi(int dim, int *arr) {
    int num;

    for (size_t a = 0; a <= dim; a++) {
        do {
            printf("Inserire un numero: ");
            scanf("%d", &num);
        } while (num < 0);

        arr[a] = num;
    }
}

void stampa(int dim, int *arr) {
    printf("Stampa Array in corso...");

    for (size_t b = 0; b <= dim; b++) {
        printf("%d ", arr[b]);
    }
} 

void controlla (int dim, int *arr, int*pari, int *disp) {
    float div;
    int contP = 0;
    int contD = 0;
    
    for (size_t a = 0; a <= dim, a++) {
        div = arr[a] % 2;
        if (div == 0) {
            pari[contP] = arr[a];
            contP++;
        }
        else {
            disp[contD] = arr[a];
            contD++;
        }
    }

    printf("Nell'array ci sono --> \n\t%d elementi pari \n\t%d elementi dispari", contP, contD);
}

int main () {
    int dim;

    do {
        printf("Inserire la dimensione di un array: ");
        scanf("%d", &dim);
    } while (dim <= 0);

    int arr[dim];
    int pari[dim];
    int disp[dim];

    riempi(dim, arr);
    stampa(dim, arr);

    return 0;
}
