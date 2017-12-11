void setup()
{
  size(1000, 600);
}

void draw()
{
  float boxX = width * 0.02;
  float boxY = height * 0.02;
  
  
  drawBackground();
  boxDisplay(boxX, boxY);
  boxDisplay(boxX, (height/2)+boxY);
}

void drawBackground()
{
  background(#050817);
  float x, y;
  float r = 1;
  for( x = 0; x < width + 20; x += 20)
  {
    for(y = 0; y <height + 20; y += 20)
    {
       noStroke();
       fill(255);
       ellipse(x, y, r, r);
     }
   }
}

void boxDisplay(float bX, float bY)
{
  float boxWidth = width * 0.2;
  float boxHeight = height * 0.45;
  stroke(255);
  noFill();
  rect(bX, bY, boxWidth, boxHeight);
}