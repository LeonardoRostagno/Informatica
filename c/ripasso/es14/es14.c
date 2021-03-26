/* Data una stringa letta da tastiera (può contenere spazi),(con elemento tappo\0) creare la stringa con i caratteri invertiti */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int inverti (int dim, char *arr) {
    char var;

    for (size_t a = 0; a <= dim / 2; a++) {
        var = arr[a];
        arr[a] = arr[dim];
        arr[dim = var];
    }

    printf("Stampa array invertito in corso...\n");

    for (size_t b = 0; b <= dim; b++) {
        printf("%c", arr[b]);
    }
}

int main () {
    int dim;
    char car;

    do {
        printf("Inserire dimesione della stringa: ");
        scanf("%d", &dim);
    } while (dim <= 0);

    char arr[dim];

    for (size_t a = 0; a < dim; a++) {
        printf("Inserire il carattere da immettere alla cella %d dell'array\n\t(celle rimanenti = %d)\n", a, dim - a);
        scanf("%d", &car);
        arr[a] = car;
    } 

    printf("Stampa della stringa immessa in corso...\n"); 

    for (size_t b = 0; b <= dim; b++) {
        printf("%c", arr[b]);
    }

    inverti (dim, arr);

    return 0;
}