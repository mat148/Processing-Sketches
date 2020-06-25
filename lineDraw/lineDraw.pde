void setup() {
  size(640, 360);
  background(#5FCDD9);
  fill(#798C35);
  stroke(#798C35);
  strokeWeight(1);
  rect(0, 300, 640, 60);
}

void draw() {

  //fill(#F2798F);
  colorMode(HSB,360, 100, 100);
  stroke((pmouseY + mouseY)/2, 100, 100);
  //circle(mouseX, mouseY, 25);
  strokeWeight((pmouseX + mouseX)/12);
  line(pmouseX, pmouseY, mouseX, mouseY);
}

void mousePressed() {
  background(#5FCDD9);
  fill(#798C35);
  stroke(#798C35);
  strokeWeight(1);
  rect(0, 300, 640, 60);
}
