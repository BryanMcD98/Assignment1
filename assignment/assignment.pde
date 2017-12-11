void setup()
{
  size(1000, 600);
}

Spaceship s1 = new Spaceship(500, 300); 

void draw()
{
  float boxX = width * 0.02;
  float boxY = height * 0.02;
  
  drawBackground();
  boxDisplay(boxX, boxY);
  boxDisplay(boxX, (height/2)+boxY);
  s1.render();
}

void drawBackground()
{
  background(#050817);
  float x, y;
  float r = 1;
  for( x = 2.5; x < width + 20; x += 19)
  {
    for(y = 2.5; y <height + 20; y += 19)
    {
       noStroke();
       fill(255, 255, 255, 75);
       ellipse(x, y, r, r);
     }
   }
}

void boxDisplay(float bX, float bY)
{
  float boxWidth = width * 0.2;
  float boxHeight = height * 0.45;
  stroke(255, 255, 255, 80);
  noFill();
  rect(bX, bY, boxWidth, boxHeight);
}