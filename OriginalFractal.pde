import processing.core.PApplet;

public class Sketch extends PApplet {

  public void settings() {
    size(800, 800);
  }

  public void setup(){
    
  }
  public void draw(){
    background(0);
    myFractal(600,600,600,50,100,150);

  }
  public void myFractal(int x, int y, int siz, int r, int g, int b) {
    ellipse(x,y,siz,siz);
    fill(r,g,b);
    if (siz > 20){
      myFractal(x-44,y-44,siz - 40, (int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255)); 
    }
  }
}
