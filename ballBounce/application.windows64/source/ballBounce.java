import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class ballBounce extends PApplet {

float circleX;
float circleY;
float circleW;
int newCircleW;
int newCircleX;
int newCircleY;
int speed = PApplet.parseInt(random(1,6));
int xSpeed;
int ySpeed;
boolean xDir;
boolean yDir;
int colorCircle = color(255);

public void setup() {
  
  
  circleW = random(15, 60);
  newCircleW = PApplet.parseInt(circleW);
  
  circleX = random(0 + (newCircleW / 2), width - (newCircleW / 2));
  circleY = random(0 + (newCircleW / 2), height - (newCircleW / 2));
  newCircleX = PApplet.parseInt(circleX);
  newCircleY = PApplet.parseInt(circleY);
  
  xDir = PApplet.parseBoolean(PApplet.parseInt(round(random(1))));
  if(xDir == true) {
    xSpeed = speed;
  }else {
    xSpeed = speed * -1;
  }
  
  yDir = PApplet.parseBoolean(PApplet.parseInt(round(random(1))));
  if(yDir == true) {
    ySpeed = speed;
  }else {
    ySpeed = speed * -1;
  }
}

public void draw() {
  //DRAWING
  background(50);
  
  fill(colorCircle);
  ellipse(newCircleX, newCircleY, newCircleW, newCircleW);
  
  //LOGIC
  newCircleX = newCircleX + xSpeed;
  newCircleY = newCircleY + ySpeed;
  
  if (newCircleX >= width - (newCircleW / 2) || newCircleX <= 0 + (newCircleW / 2)) {
    xSpeed = xSpeed * -1;
    colorCircle =  color(random(255), random(255), random(255));
    ellipse(newCircleX, newCircleY, newCircleW, newCircleW);
  }
  
  if (newCircleY >= height - (newCircleW / 2) || newCircleY <= 0 + (newCircleW / 2)) {
    ySpeed = ySpeed * -1;
    colorCircle =  color(random(255), random(255), random(255));
    ellipse(newCircleX, newCircleY, newCircleW, newCircleW);
  }
}
  public void settings() {  size(640, 360); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "ballBounce" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
