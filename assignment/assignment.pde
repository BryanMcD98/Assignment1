void setup()
{
  size(1000, 600);
}

void draw()
{
  float boxDist = width * 0.02;
  
  drawBackground();
  boxDisplay(boxDist);
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

void boxDisplay(float bDist)
{
  float boxWidth = width * 0.2;
  float boxHeight = height * 0.45;
  stroke(255);
  noFill();
  rect(bDist, bDist, boxWidth, boxHeight);
}