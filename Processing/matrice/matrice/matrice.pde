Griglia g;

void setup () {
  size (600, 600);
  
  g = new Griglia(20, 20);
}

void draw() {
  background (51);
  g.draw();
}

void mousePressed() {
  g.premuto(mouseX, mouseY);
}
