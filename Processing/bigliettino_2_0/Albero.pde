public class Albero {
   private float x; // lato triangolo
   private float y; // lato triangolo
   private float z; // lato triangolo
   private float h; // altezza del triangolo
   public static final color colore_albero = #006400;
   
   public Albero(float x, float y, float z, float h) {
       this.x = x; //
       this.y = y; //
       this.z = z; // 
       this.h = h; // dimensioni triangolo 
   } 
   
   public void draw() {
       fill(colore_albero);
       triangle(x-z/2, y, x, y-h, x+z/2, y); 
   }
  
}
