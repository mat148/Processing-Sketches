float x = 0;

void setup() {
  size(400, 300);
  //background(0);
}

void draw() {
  //Draw the background
  background(0);
  
  //Set x to zero
  x = 0;
  
  //While x less than 400
  while(x < width) {
    //If mouse X less than 1
    if(mouseX < 1) {
      //set x to x + 1
      x = x + 1;
    } else {
      //Set x = x + mouseX
      x = x + mouseX;
    }
    
    //Create the circle
    fill(101);
    stroke(255);
    ellipse(x, 150, 16, 16);
  }
}
