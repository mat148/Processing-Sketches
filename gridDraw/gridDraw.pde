float x = 0;
float y = 0;
float xSpacing;
float xNumberLines = 30;
float xStrokeWeight = 2;
float a = 0;

float ySpacing;
float yNumberLines = 30;
float yStrokeWeight = 2;
float b = 0;

void setup() {
  size(400, 300);
  
  //Calculate x spacing
  xSpacing = (width / (xNumberLines));
  ySpacing = (height / (yNumberLines));
}

void draw() {
  stroke(255);
  strokeWeight(xStrokeWeight);
  
  while(a <= xNumberLines) {
    line(x, 0, x, height);
    x = x + xSpacing;
    a++;
  }
  
  while(b <= yNumberLines) {
    line(0, y, width, y);
    y = y + ySpacing;
    b++;
  }
}
