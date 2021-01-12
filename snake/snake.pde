ArrayList <Integer> x = new ArrayList <Integer> ();
ArrayList <Integer> y = new ArrayList <Integer> ();

int w = 30; // width
int h = 30; // height
int bs = 20; // base
int dir = 2; // direzione
int foodx = 12; // coordinata x del cibo
int foody = 10; // coordinata y del cibo
int punti = 0; // punteggio del giocatore

private final static color red = #b22222; // firebrick
private final static color green = #008000; // green
private final static color black = #000000; // nero
private final static color white = #c0c0c0; // silver

int[] dx = {0, 0, 1, -1}; // direzione x
int[] dy = {1, -1, 0, 0}; // direzione y
// l'ordine è giù, su, destra, sinistra

boolean gameover = false; // booleano per il gameover

void setup () {
  size (600, 600); // le dimensioni sono w*bs e h*bs
  x.add(5); // aggiunge al vettore x 5
  y.add(5); // aggiunge al vettore y 5
}

void draw () {
  background (51); // sfondo del campo da gioco
  
  /* creazione di una matrice da usare come campo da gioco */
  for (int a = 0; a < w; a++) line(a*bs, 0, a*bs, height);
  for (int a = 0; a < h; a++) line(0, a*bs, width, a*bs);
  
  for (int a = 0; a < x.size(); a++) {
    fill(green); // colore snake 
    rect(x.get(a)*bs, y.get(a)*bs, bs, bs); // forma della testa dello snake
  }
  
  // se siamo ancora in partita, non abbiamo perso
  if (!gameover) {
    fill(red); // colore cibo
    rect(foodx*bs, foody*bs, bs ,bs); // forma del cibo 
  
    if (frameCount % 5 == 0) {
      x.add(0, x.get(0) + dx[dir]);
      y.add(0, y.get(0) + dy[dir]);
      
      // controllo se è stato toccato il bordo dello schermo
      if (x.get(0) < 0 || y.get(0) < 0 || x.get(0) >= w || y.get(0) >= h) {
          gameover = true; // imposto gameover a true
      }
      
      // se lo snake sta toccando il cibo, l'ha mangiato
      if (x.get(0) == foodx && y.get(0) == foody) {
        // creo delle nuove cordinate del cibo 
        foodx = (int)random(0, w);
        foody = (int)random(0, h); 
        punti += 5; // aggiornamento punti
      } 
      else {
        x.remove(x.size() - 1); //
        y.remove(y.size() - 1); // evito di creare nuovi pezzi dello snake, eccetto quando mangia il cibo
      }
    }
  }
  else {
    textSize(20); //grandezza del testo
    fill(black); //colore del testo
    background(white); //sfondo della finestra
    text("GAME OVER! punti -->" + punti, 150, 60); // stampa di gameover e punti
  }
  
 }

/* con keyPressed verifico se sto utilizzando i 4 tasti possibili --> W A S D */
void keyPressed() {
  int new_dir = key == 's' ? 0 : (key == 'w' ? 1 : (key == 'd' ? 2 : (key == 'a' ? 3 : -1)));
  
  if (new_dir != -1) dir = new_dir;
}
