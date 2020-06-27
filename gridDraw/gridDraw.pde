float x;
float y;
float spacing = 50;

void setup() {
  size(400, 300);
}

void draw() {
  //background(0);
  
  stroke(255);
  strokeWeight(2);
  
  //line(x, 0, x, 300);
  
  //x = 50;
  while(x < width) {
    print(x);
    //line(x, 0, x, height);
    line(x, 0, x, 300);
    x = x + spacing;
  }
  
  //y = spacing;
  /*while(y < height) {
    line(0, y, width, y);
    y = y + spacing;
  }*/
}
