Griglia g;

public void setup() {
  size(600, 600);
  g = new Griglia(width, height, 30, 30);
}

public void draw() {
  background(51);
  g.draw();
}

public void mousePressed() {
  g.premuto(mouseX, mouseY);
}
