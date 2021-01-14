public class StellaDinamica extends Stella {
  private float speedX;  //velocità in orizzontale
  private final float DEFAULT_VET = 1;
 
  public StellaDinamica(){
    super(); // è la superclasse di una sottoclasse --> StellaDinamica > Stella
    speedX = DEFAULT_VET;
  }
  
  /* metodo per il movimento della stella */
  public void move(){
    if (getCordX() + speedX == width) speedX = -1;
    if (getCordX() + speedX == 0) speedX = 1;
    
    setCordX( getCordX() + speedX);
}

  public void draw(){
    move();
    super.draw();
  }
  
  /* setter e getter della velocità di movimento della stella */
  public void setSpeedX(float vel){  this.speedX = vel; }
  public float getSpeedX(){  return this.speedX; }
}
