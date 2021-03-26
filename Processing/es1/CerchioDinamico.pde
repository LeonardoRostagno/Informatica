public class CerchioDinamico extends Cerchio {
  private float speedX;  //velocità in orizzontale
  private float speedY;  //velocità in verticale
  private final float DEFAULT_VET = 1;
 
  public CerchioDinamico(){
    super();
    speedX = DEFAULT_VET;
    speedY = DEFAULT_VET;   
  }
  
  public void move(){
    if (getCordX() + getDim()/2 -3 + speedX == width) speedX = -1;
    if (getCordX() - getDim()/2 +3 + speedX == 0) speedX = 1;
    if (getCordY() + getDim()/2 -3 + speedY == height) speedY = -1;
    if (getCordY() - getDim()/2 +3 + speedY == 0) speedY = 1;
    
      setCordX( getCordX() + speedX);
      setCordY( getCordY() + speedY);
}

  public void show(){
    move();
    super.show();
    }
    
    public void setSpeedX(float vel){
      this.speedX = vel;
    }

    public void setSpeedY(float vel){
        this.speedY = vel;
    }

     public float getSpeedX(){
        return this.speedX;
    }
    
    public float getSpeedY(){
        return this.speedY;
    } 
}
