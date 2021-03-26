/* dati N num tra 0 e 100. Calcola il min e il max */
#include <stdio.h>
#include <stdlib.h>

int MinMax (int N, int *min) {
    int max = 0;
    *min = 100;
    int x;

    for (size_t a = 0; a < N; a++) {
        do {
            printf("Inserire un numero compreso tra 0 e 100: ");
            scanf("%d", &x);
        } while (x < 0 || x > 100);

        if (*min < x) {
            *min = x;
        }
        if (x > max) {
            max = x;
        }
    }
    return max;
}

int main () {
    int N;
    int min;
    int MAX;

    do {
        printf("Inserire un numero N positivo:" );
    } while (N < 0);

    MAX = MinMax(N, &min);

    print("\n\tValore Massimo --> %d\n\tValore Minimo --> %d", MAX, min);

    return 0;
}