/*  Scrivere un programma C che definisca la struttura Data con i campi giorno, mese e anno e 
    quindi la struttura Persona composta da nome, cognome e data di nascita. 
    Si richiedano i dati di n persone e una data e si stampino tutte le persone nate in quella data */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX 100

typedef struct annuale{
    int giorno;
    int mese;
    int anno;
} Data;

typedef struct people{
    char nome[MAX];
    char cognome[MAX];
    char nascita[MAX];
} Persona;

void spazia() {
    printf("\n");

    for (size_t z = 0; z < 50; z++) {
        printf("-");
    }

    printf("\n");
}

int main () {
    Data date;
    Persona info;

    int continua = 0;
    int n_people = 0;
    int cont = 0;

    char *token;
    char delimita[] = "/";

    char arr_nome[MAX];
    char arr_cognome[MAX];
    int arr_anno[MAX];
    int arr_mese[MAX];
    int arr_giorno[MAX];
    
    int *ptr_anno;
    int *ptr_mese;
    int *ptr_giorno;

    // ciclo immissione data
    printf("Inserire una data reale...\n");

    do {
        printf("Inserire anno: ");
        scanf("%d", &date.anno);
    } while (date.anno > 2020);

    do {
        printf("Inserire mese: ");
        scanf("%d", &date.mese);
    } while (date.mese < 1 && date.mese > 12);

    do {
        printf("Inserire giorno: ");
        scanf("%d", &date.giorno);
    } while (date.giorno < 1 && date.giorno > 28 && date.mese != 2 || date.giorno < 1 && date.giorno > 30 && date.mese != 4 && date.mese != 6 && date.mese != 9 && date.mese != 11 || date.giorno < 1 && date.giorno > 31 && date.mese != 1 && date.mese != 3 && date.mese != 5 && date.mese != 7 && date.mese != 8 && date.mese != 10 && date.mese != 12);
    /* date.giorno < 1 && date.giorno > 28 && date.mese != 2 ||

    date.giorno < 1 && date.giorno > 30 && date.mese != 4 && date.mese != 6 && date.mese != 9 && date.mese != 11 ||

    date.giorno < 1 && date.giorno > 31 && date.mese != 1 && date.mese != 3 && date.mese != 5 && date.mese != 7 &&
    date.mese != 8 && date.mese != 10 && date.mese != 12 */

    spazia();

    //ciclo immissione persone
    do {
        printf("\nInserire nome persona: ");
        scanf("%s", info.nome);
        arr_nome[n_people] = info.nome;

        printf("Inserire cognome persona: ");
        scanf("%s", info.cognome);
        arr_cognome[n_people] = info.cognome;

        printf("Inserire data di nascita: (usare come delimitatore lo '/')\n\t(esempio --> GG/MM/AA) \n");
        scanf("%s", info.nascita);

        token = strtok(info.nascita, delimita);
        arr_giorno[n_people] = atoi(token);

        token = strtok(info.nascita, delimita);
        arr_mese[n_people] = atoi(token);

        token = strtok(info.nascita, delimita);
        arr_anno[n_people] = atoi(token);

        printf("\nVuoi aggiungere una altra persona? 0 --> NO 1 --> SI' \n");
        scanf("%d", &continua); 

        n_people++;
    } while (continua == 1);

    spazia();
    
    printf("\nStampo data immessa in corso...\n\tAnno --> %d\tMese --> %d\tGiorno --> %d\n", date.anno, date.mese, date.giorno);

    for (size_t a = 0; a < n_people; a++) {
        ptr_anno = &arr_anno[a];
        ptr_mese = &arr_mese[a];
        ptr_giorno = &arr_giorno[a];

        if (ptr_anno == date.anno && ptr_mese == date.mese && ptr_giorno == date.giorno) {
            printf("\nNome --> %s\nCognome --> %s", arr_nome[a], arr_cognome[a]);
            cont++;
        }
    }
    printf("Alla data stabilita sono nate %d persone", cont);

    return 0;
}