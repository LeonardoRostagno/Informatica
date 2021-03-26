/* dato un numero N, verifica che sia un numero perfatto (es. 6 = 3 + 2 + 1) */
#include <stdio.h>
#include <stdlib.h>

int perfetto (int N) {
    int somma = 0;
    float resto = 0;
    int a;

    for (a = 1; a < N; a++) {
        resto = N % a;

        if (resto == 0) {
            somma += a;
        }
    }
    return somma;
}

int main () {
    int N;
    int Somma;

    do {
        printf("inserire un numero N positivo: ");
        scanf("%d", &N);
    } while (N < 0);

    Somma = perfetto(N);

    if (Somma == N) {
        printf("Il numero %d e' un numero perfetto", N);
    }
    else {
        printf("Il numero %d non e' un numero perfetto", N);
    }
n
    return 0;
}