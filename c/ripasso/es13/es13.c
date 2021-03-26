/* Raddoppiare le occorrenze delle vocali in una stringa (ciao->ciiaaoo) usare 2 stringhe; */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void raddoppia (char *arr, int dim) {
    
    int d_cop = 2 * dim;
    char cop[d_cop];

    for (size_t a = 0; a <= dim; a++) {
        cop[a + a] = arr[a];
        cop[a + a + 1] = arr[a];
    }

    printf("\nStampa array doppione in corso...\n");

    for (size_t b = 0; b <= dim; b++) {
        printf("%c %c ", cop[b + b], cop[b + b + 1]);
    }
}

int main () {
    char arr[] = "salve";
    int dim = 0;

    for (size_t a = 0; arr[a] != '\0'; a++) {
        dim = a;
    }

    printf("Stampa dell'array in corso...\n");

    for (size_t b  = 0; b <= dim; b++) {
        printf("%c ", arr[b]);
    }

    raddoppia (arr, dim);

    return 0;
}