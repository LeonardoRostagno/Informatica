int[] numeri; // int[] è un tipo array, quindi numeri è una array di int
String[] stringa; // String[] è un tipo di array, quindi stringa è un array di String

private final static int DIM = 10;

void setup () {
   numeri = new int[DIM]; // inizializzazione dell'array numeri
   
   for (int a = 0; a < DIM; a++) {
      numeri[a] = a * a; // inserisco in numeri alla posizione a il prodotto, funziona come in C
   }
   stampa(numeri); // richiamo della funzione
}

// passiamo solo l'array, la lunghezza è già presente all'interno dell'oggetto
void stampa(int[] nums) {
   for (int b = 0; b < nums.length; b++) { // length permette di sapere la lunghezza
      System.out.println("Indice: " + b + "  Elemento: " + nums[b]); // stampa elementi array
   }
}
