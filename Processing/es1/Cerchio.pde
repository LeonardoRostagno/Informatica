public class Cerchio  {
  private float dim;
  private static final float DIM_DEFAULT = 100;
  private float cordX;
  private float cordY;
  private color colore;
  private color bordo;
  
  public Cerchio (){
    dim = DIM_DEFAULT;
    cordX = width / 2;
    cordY = height / 2;
    colore = color(0,255,255);
    bordo = color(0,0,0);
}

  public void show(){
    strokeWeight(3); //spessore
    stroke(bordo); //colore del bordo
    fill(colore);
    circle(cordX, cordY, dim); 
}

  public void setDim(float dim){if (dim >= 0) this.dim = dim;}
  public float getDim(){ return dim; }
  public void setCordX(float x){  cordX = x; }
  public void setCordY(float y){  cordY = y; }
  public float getCordX(){ return cordX; }
  public float getCordY(){ return cordY; }
  public void setColore(color colore){this.colore = color(colore); }
  public color getColore(){ return colore;}
  public color getBordo(){  return bordo; }
  public void setBordo(color colore){bordo = colore;}
  /*
  public float Distanza (Cerchio Cerchio2) {
    float distanzaX = 0;
    float distanzaY = 0;
    
    distanzaX = this.cordX = Cerchio2.getCordX();
    distanzaY = this.cordY = Cerchio2.getCordY();
    
    return Math.sqrt(distanzaX + distanzaX + distanzaY + distanzaY);
  }*/
}
