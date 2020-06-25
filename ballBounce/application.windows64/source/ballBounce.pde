float circleX;
float circleY;
float circleW;
int newCircleW;
int newCircleX;
int newCircleY;
int speed = int(random(1,6));
int xSpeed;
int ySpeed;
boolean xDir;
boolean yDir;
color colorCircle = color(255);

void setup() {
  size(640, 360);
  
  circleW = random(15, 60);
  newCircleW = int(circleW);
  
  circleX = random(0 + (newCircleW / 2), width - (newCircleW / 2));
  circleY = random(0 + (newCircleW / 2), height - (newCircleW / 2));
  newCircleX = int(circleX);
  newCircleY = int(circleY);
  
  xDir = boolean(int(round(random(1))));
  if(xDir == true) {
    xSpeed = speed;
  }else {
    xSpeed = speed * -1;
  }
  
  yDir = boolean(int(round(random(1))));
  if(yDir == true) {
    ySpeed = speed;
  }else {
    ySpeed = speed * -1;
  }
}

void draw() {
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
