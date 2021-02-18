public void setup() {
  size(500,500);
}
public void draw() {
  myFractal(250, 250, 180);
}
public void myFractal(int x, int y, int siz) {
  fill((int)(Math.random()*100), (int)(Math.random()*100), (int)(Math.random()*100));
  ellipse(x, y, siz, siz);
  if (siz > 10) {
    myFractal(x-2*siz/3, y, 2*siz/4);
    myFractal(x+2*siz/3, y, 2*siz/4);
    myFractal(x, y+2*siz/3, 2*siz/4);
    myFractal(x, y-2*siz/3, 2*siz/4);
  }
}
