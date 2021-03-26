#include <stdio.h>
#include <stdlib.h>

int main () {
    FILE *ptr_in, *ptr_out;

    ptr_in = fopen ("in.txt", "r");

    if (ptr_in) {
        printf("Errore FILE...\n");
    }
    else {
        printf("FILE OK...\n");

    }

    ptr_out = fopen ("out.txt", "w");

    if (ptr_out) {
        printf("Errore FILE...\n");
    }
    else {
        printf("FILE OK...\n");
    }
    

    fclose (ptr_out);
    fclose (ptr_in);
}