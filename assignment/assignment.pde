PFont font;

void setup()
{
  size(1000, 600);
  smooth();
  
  font = loadFont("ARDESTINE-28.vlw");
  
  s1 = new Spaceship(width * 0.145, height * 0.3, 45); 
  b1 = new Box(width * 0.02, height * 0.02, width * 0.25, height * 0.5);
  b2 = new Box(width * 0.02, height * 0.54, width * 0.25, height * 0.419);
  r1 = new Radar(width * 0.02, height * 0.54, width * 0.27, height * 0.9569, 3.5);
  c1 = new CircleMenu(width*0.60, height*0.5, 75);
  p1 = new PowerSymbol(width*0.60, height*0.5, 70);
  c2 = new CircleMenu(width*0.60, height*0.5, 150);
  c3 = new CircleMenu(width*0.60, height*0.5, 400);
  c4 = new CircleMenu(width*0.60, height*0.5, 525);
}


Spaceship s1;
Box b1, b2;
Radar r1;
CircleMenu c1, c2, c3, c4;
PowerSymbol p1;


void draw()
{
  drawBackground();
  textFont(font, 32);
  s1.render();
  b1.drawBox();
  b2.drawBox();
  r1.update();
  c1.render();
  c1.centre();
  c2.render();
  c3.render();
  c4.render();
  
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