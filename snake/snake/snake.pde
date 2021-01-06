ArrayList <Integer> x = new ArrayList <Integer> ();
ArrayList <Integer> y = new ArrayList <Integer> ();

int w = 30; // width
int h = 30; // height
int bs = 20; // base
int dir = 2; // direzione
int foodx = 12; // coordinata x del cibo
int foody = 10; // coordinata y del cibo

int[] dx = {0, 0, 1, -1}; // direzione x
int[] dy = {1, -1, 0, 0}; // direzione y
// l'ordine è giù, su, destra, sinistra

boolean gameover = false; // booleano per il gameover

void setup () {
  size (600, 600); // le dimensioni sono w*bs e h*bs
  x.add(5);
  y.add(5);
}

void draw () {
  background (51);
  
  for (int a = 0; a < w; a++) line(a*bs, 0, a*bs, height);
  for (int a = 0; a < h; a++) line(0, a*bs, width, a*bs);
  
  for (int a = 0; a < x.size(); a++) {
    fill(0, 255, 0);
    rect(x.get(a)*bs, y.get(a)*bs, bs, bs);    
  }
  if (!gameover) {
    fill(255, 0, 0);
    rect(foodx*bs, foody*bs, bs ,bs);
  
    if (frameCount % 5 == 0) {
      x.add(0, x.get(0) + dx[dir]);
      y.add(0, y.get(0) + dy[dir]);
      
      if (x.get(0) == foodx && y.get(0) == foody) {
        foodx = (int)random(0, w);
        foody = (int)random(0, h); 
      } 
      else {
        x.remove(x.size() - 1);
        y.remove(y.size() - 1);
      }
    }
  }
 }

void keyPressed() {
  int new_dir = (key == 's' ? 0 : (key == 'w' ? 1 : (key == 'd' ? 2 : (key == 'a' ? 3 : -1))));
  
  if (new_dir != -1) dir = new_dir;
}
