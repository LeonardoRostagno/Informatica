public class Stella {
  private float cordX; // coordinata X
  private float cordY; // coordinata Y
  
  public Stella() {
    this.cordX = width/6;
    this.cordY = height/6;
  }
  
  public void draw() {
    translate(this.cordX, this.cordY); // consente di spostare gli oggetti all'interno della scheda
    beginShape(); // serve per forme complesse, inizia a registrare i vertici
    vertex(0, -50);     //
    vertex(14, -20);    //
    vertex(47, -15);    //
    vertex(23, 7);      //
    vertex(29, 40);     //
    vertex(0, 25);      //
    vertex(-29, 40);    //
    vertex(-23, 7);     //
    vertex(-47, -15);   // 
    vertex(-14, -20);   // sono tutti vertici della stella
    endShape(CLOSE); // termina la registrazione
  }
  
  /* setter e getter delle coordinate della stella */
  public void setCordX(float x){  cordX = x; }
  public void setCordY(float y){  cordY = y; }
  public float getCordX(){ return cordX; }
  public float getCordY(){ return cordY; }
}
