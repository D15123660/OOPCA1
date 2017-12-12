import peasy.*;
import peasy.org.apache.commons.math.*;
import peasy.org.apache.commons.math.geometry.*;

Planet sun;
Zoom move;
PeasyCam cam;
PImage[] img = new PImage[10];
PImage bg;

void setup()
{
  size(852,480,P3D);
  stroke(255);
  noFill();
  img[0] = loadImage("sun.jpg");
  img[1] = loadImage("mercury.jpg");
  img[2] = loadImage("venus.jpg");
  img[3] = loadImage("earth.jpg");
  img[4] = loadImage("mars.jpg");
  img[5] = loadImage("jupiter.jpg");
  img[6] = loadImage("saturn.jpg");
  img[7] = loadImage("uranus.jpg");
  img[8] = loadImage("neptune.jpg");
  img[9] = loadImage("pluto.jpg");
  bg = loadImage("universe.jpg");
  
  move = new Zoom();
  sun = new Planet(100,0,img[0]);
  sun.NewSpawn(9);
  cam = new PeasyCam(this,1500);

}
void draw()
{
 
  background(bg);
  move.display();
  sun.star();
}
void mousePressed()
{
  sun.mousePressed();
}
void keyPressed()
{
  move.keyPressed();
}
void keyReleased()
{
  move.keyReleased();
}