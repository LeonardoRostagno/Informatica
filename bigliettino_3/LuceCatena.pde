public class LuceCatena {
  private Luce[] luci1;
  private Luce[] luci2;
  private Luce[] luci3;
  private Luce[] luci4;
  
  public LuceCatena (int dim) {
    luci1 = new Luce[dim];
    luci2 = new Luce[dim];
    luci3 = new Luce[dim];
    luci4 = new Luce[dim];
    
    for (int a = 0; a < dim; a++) {
      luci1[a] = new Luce(a*width/9, 3.5*height/5, 5, true);
      luci2[a] = new Luce(a*width/9, 4*height/5, 5, true);
      luci3[a] = new Luce(a*width/9, 4.5*height/5, 5, true);
      luci4[a] = new Luce(a*width/9, 3*height/5, 5, true);
    }
  }
  
  public void draw() {
    for(int c = 0; c < luci1.length; c++) {
      luci1[c].draw();
      luci2[c].draw();
      luci3[c].draw();
      luci4[c].draw();
    }
  }
  
  public void premuto(float mx, float my) {
    for(int c = 0; c < luci1.length; c++){
       luci1[c].premuto(mx, my); 
       luci2[c].premuto(mx, my);
       luci3[c].premuto(mx, my);
       luci4[c].premuto(mx, my);
    }
  }
}
