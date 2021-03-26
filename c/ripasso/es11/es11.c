/* data 1 stringa, convertire i caratteri minuscoli in maiuscolo */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

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

void converti (int dim, int *arr) {
    int a = 0;

    while (arr[a] != '\0') {
        if (arr[a] > 'a' && arr[a] < 'z') {
            arr[a] = arr[a] - ('a' + 'A');
        }
    }
}


int main () {
    int dim;

    do {
        printf("Inserire la dimensione di un array: ");
        scanf("%d", &dim);
    } while (dim <= 0);

    int arr[dim];

    riempi(dim, arr);
    stampa(dim, arr);
    converti(dim, arr);

    return 0; 
}