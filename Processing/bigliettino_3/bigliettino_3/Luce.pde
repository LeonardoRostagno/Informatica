public class Luce {
  private float x; // coordinata x
  private float y; // coordinata y
  private float r; // raggio
  
  private boolean accesa;
  
  private final static color YELLOW = #ffd700; // gold
  private final static color GREEN = #00ff00; // lime
  private final static color BLUE = #1e90ff; // dodgerblue
  private final static color RED = #b22222; // firebrick
  private final static color OFF = #c0c0c0; // grey
 
  public Luce(float x, float y, float r, boolean accesa) {
    this.x = x;
    this.y = y;
    this.r = r;
    this.accesa = accesa;
  }
  
  void draw() {
    int casual = (int)random(1, 5);
    
    if (accesa) {
        if (casual == 1) {
          fill (YELLOW);
        }
        else if (casual == 2) {
          fill (GREEN);
        }
        else if (casual == 3) {
          fill (BLUE);
        }
        else if (casual == 4) {
          fill (RED);
        } 
    }
    else {
      fill(OFF);
    } 

    circle(x, y, 2*r); 
  }
  
  boolean premuto(float mx, float my) {
    float dx = mx - x;
    float dy = my - y;
    boolean ris = false;
    
    if((dx * dx) + (dy * dy) < (r * r)) {
      accesa = !accesa; 
      ris = true;
    }    
    return ris;
  }
}
