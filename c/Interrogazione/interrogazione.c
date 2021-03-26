// Rostagno Leonardo

#include <stdio.h>
#include <stdlib.h>

int func(int *arr, int elem, int DIM) {
    int cont = 0;

    for (size_t a = 0; a < DIM; a++) {
        if (arr[a] == elem) {
            cont++;
        }
    }

    return cont;
}

int main () {
    int DIM;
    int num;
    int elem;

    do {
        printf("Inserire una dimensione per l'array: ");
        scanf("%d", &DIM);

    } while (DIM < 0);

    int arr[DIM];

    for (size_t b = 0; b < DIM; b++) {
        printf ("Inserire l'elemento alla posizione %d: ", b);
        scanf("%d", &num);

        arr[b] = num;
    }

    printf("Inserire l'elemento da cercare: ");
    scanf("%d", &elem);

    int cont = func(arr, elem, DIM);

    if (cont > 0) {
        printf("L'elemento %d e' stato trovato %d volte.\n", elem, cont);
    }
    else {
        printf("L'elemento %d non e' presente nell'array.\n", elem);
    }

    return 0;
}