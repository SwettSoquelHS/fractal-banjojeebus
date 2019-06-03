void setup() {
  size(800, 800);
  background(255);
  smooth();
  frameRate(60);
}
float x = width/2;
float y = height/2;

void draw() {
  circles(x,y,0);

}
public void circles(float x_pos,float y_pos,float n) {

  pushMatrix();
  translate(x_pos,y_pos);
  stroke(0);
  if (n>1200) {
    n=0;
    ellipse(0, 0, n, n);

    //ellipse(0, 0, n+500, n+500);
    //ellipse(0, 0, n+250, n+250);
  } else {
    // ellipse(0, 0, n+500, n+500);
    // ellipse(0, 0, n+250, n+250);
    fill((float)(255*Math.random()),(float)(255*Math.random()),(float)(255*Math.random()));
    ellipse(0, 0, n, n);
    circles(x_pos,y_pos,n+50);
  }
  popMatrix();
}
