void setup()
{
  size(1000, 600);
  smooth();
  
  s = new Spaceship(142.5, 160, 45); 
  b1 = new Box(width * 0.02, height * 0.02, width * 0.25, height * 0.5);
}


Spaceship s;
Box b1, b2;


void draw()
{
  drawBackground();
  //boxDisplay(boxX, (height/2)+boxY);
  s.render();
  b1.drawBox();
}

void drawBackground()
{
  background(#050817);
  float x, y;
  float r = 1;
  for(x = 2.5; x < width + 20; x += 19)
  {
    for(y = 2.5; y <height + 20; y += 19)
    {
       noStroke();
       fill(255, 255, 255, 75);
       ellipse(x, y, r, r);
     }
   }
}