void setup()
{
  size(1000, 600);
  smooth();
  
}

Spaceship s = new Spaceship(142.5, 160, 45); 

void draw()
{
  float boxX = width * 0.02;
  float boxY = height * 0.02;
  
  drawBackground();
  boxDisplay(boxX, boxY);
  boxDisplay(boxX, (height/2)+boxY);
  s.render();
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
  float boxWidth = width * 0.25;
  float boxHeight = height * 0.45;
  stroke(90, 220, 160, 80);
  strokeWeight(1.5);
  noFill();
  rect(bX, bY, boxWidth, boxHeight);
}