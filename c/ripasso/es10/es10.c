/* Dopo aver caricato un vettore di numeri interi con N elementi, contare gli elementi che hanno valore superiore ad un X letto da file */

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

void apri_file (FILE *ptr_file) {
    ptr_file = fopen("file.txt", "r");

    if (ptr_file) {
        printf("FILE OK!\n");
    }
    else {
        printf("Errore FILE...\n");
    }
}

int controlla(int dim, int *arr, FILE *ptr_file){
    int cont = 0;
    int num[dim];

    for (size_t c = 0; c <= dim; c++) {
        if (arr[c] >= fgets(num, dim, ptr_file)) {
            cont++;
        }
    }
    return cont;
}

int main () {
    FILE *ptr_file;
    int dim;

    do {
        printf("Inserire la dimensione di un array: ");
        scanf("%d", &dim);
    } while (dim <= 0);

    int arr[dim];

    riempi(dim, arr);
    stampa(dim, arr);

    apri_file(ptr_file);

    int cont = controlla(dim, arr, ptr_file);

    printf("Il numero di volte in cui il numero letto da file è stato superato è di: %d\n", cont);

    fclose(ptr_file);
    return 0; 
}