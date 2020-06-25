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

public class lineDraw extends PApplet {

public void setup() {
  
  background(0xff5FCDD9);
  fill(0xff798C35);
  stroke(0xff798C35);
  strokeWeight(1);
  rect(0, 300, 640, 60);
}

public void draw() {

  //fill(#F2798F);
  colorMode(HSB,360, 100, 100);
  stroke((pmouseY + mouseY)/2, 100, 100);
  //circle(mouseX, mouseY, 25);
  strokeWeight((pmouseX + mouseX)/12);
  line(pmouseX, pmouseY, mouseX, mouseY);
}

public void mousePressed() {
  background(0xff5FCDD9);
  fill(0xff798C35);
  stroke(0xff798C35);
  strokeWeight(1);
  rect(0, 300, 640, 60);
}
  public void settings() {  size(640, 360); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "lineDraw" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
