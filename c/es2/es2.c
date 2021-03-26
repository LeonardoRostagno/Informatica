#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void stampa_caratteri();

int main () {
    stampa_caratteri();

    return 0;
}

void stampa_caratteri() {
    int num;
    char car;
    
        printf("Inserisci numero positivo: ");
        scanf("%d", &num);

        fflush(stdin); //svuota il buffer

        printf("\nInserisci carattere da stampare: ");
        scanf("%c", &car);

    for (int a = 0; a < num; a++) {
        for (int b = 0; b< num; b++) {
            printf("%c", car);
        }
        printf("\n");
    }

    printf("\n\tProgramma terminato...");
}