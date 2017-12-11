void setup()
{
  size(1000, 600);
  smooth();
  
  s1 = new Spaceship(width * 0.145, height * 0.26, 45); 
  b1 = new Box(width * 0.02, height * 0.02, width * 0.25, height * 0.5);
  b2 = new Box(width * 0.02, height * 0.54, width * 0.25, height * 0.4);
  r1 = new Radar(width * 0.02, height * 0.54, width * 0.27, height * 0.9569, 1);
}


Spaceship s1;
Box b1, b2;
Radar r1;


void draw()
{
  drawBackground();
  s1.render();
  b1.drawBox();
  b2.drawBox();
  r1.update();
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