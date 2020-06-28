float xStrokeWeight = 2;
float xNumberLines = 30;
float x = 0;

float yStrokeWeight = 4;
float yNumberLines = 6;
float y = 0;

size(400, 300);
background(0);

float xSpacing = (width / (xNumberLines));
float ySpacing = (height / (yNumberLines));

stroke(255);
strokeWeight(xStrokeWeight);

for(float a = 0; a <= xNumberLines; a++){
  line(x, 0, x, height);
  x = x + xSpacing;
}

strokeWeight(yStrokeWeight);

for(float a = 0; a <= yNumberLines; a++){
  line(0, y, width, y);
  y = y + ySpacing;
}
