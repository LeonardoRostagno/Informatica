public class Scritta {
  private String s1;
  private String s2;
  private String s3;
  private PFont f;
 
  public Scritta () {
    s1 = "Tanti Auguri";
    s2 = "di";
    s3 = "Buon Natale";
    f = createFont("Algerian", 64);
  }
  
  void show() {
    textSize(64);
    textFont(f);
    fill(178,34,34);
    
    text(s1, 500, 300);
    text(s2, 675, 400);
    text(s3, 500, 500);
  }
}
