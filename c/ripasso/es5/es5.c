/* Dato un numero N calcolarne il fattoriale ricordando che 0!=1 1!=1 n!=n*(n-1)*(n-2)*…*2*1 */

#include <stdio.h>
#include <stdlib.h>

int fattore(int num) {
    int fattoriale = 0;
    int n = num;

    while (n > 0) {
        fattoriale *= n;
        n--;
    }

    return fattoriale;
}

int main () {
    int num;
    
    do {
        printf ("Inserire un numero intero maggiore di 0: ");
        scanf("%d", &num);
    } while (num <= 0);

    int fattoriale = fattore(num);

    printf("Il numero %d e' in fattoriale %d", num, fattoriale);

    return 0;
}