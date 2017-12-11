PFont font;

void setup()
{
  size(1300, 600);
  smooth();
  
  font = loadFont("ARDESTINE-28.vlw");
  
  s1 = new Spaceship(width * 0.145, height * 0.3, 45); 
  
  b1 = new Box(width * 0.02, height * 0.02, width * 0.25, height * 0.5);
  b2 = new Box(width * 0.02, height * 0.54, width * 0.25, height * 0.419);
  
  r1 = new Radar(width * 0.02, height * 0.54, width * 0.27, height * 0.9569, 5);
  
  c1 = new CircleMenu(width*0.61, height*0.5, 75);
  p1 = new PowerSymbol(width*0.61, height*0.5, 70);
  c2 = new CircleMenu(width*0.61, height*0.5, 150);
  c3 = new CircleMenu(width*0.61, height*0.5, 400);
  c4 = new CircleMenu(width*0.61, height*0.5, 525);
  
  t1 = new Tab(width*0.81, height*0.02, width*0.17, height*0.05, "Preset", 0);
  t2 = new Tab(width*0.83, height*0.09, width*0.15, height*0.05, "Default", 1);
  t3 = new Tab(width*0.83, height*0.16, width*0.15, height*0.05, "Hyperdrive", 1);
  t4 = new Tab(width*0.83, height*0.23, width*0.15, height*0.05, "Cruise Control", 1);
  t5 = new Tab(width*0.83, height*0.30, width*0.15, height*0.05, "Hover", 1);
  t6 = new Tab(width*0.83, height*0.37, width*0.15, height*0.05, "Close Navigation", 1);
  
  t7 = new Tab(width*0.81, height*0.91, width*0.17, height*0.05, "Emergency", 0);
  t8 = new Tab(width*0.83, height*0.84, width*0.15, height*0.05, "Shutdown", 1);
  t9 = new Tab(width*0.83, height*0.77, width*0.15, height*0.05, "Self-Destruct", 1);
  t10 = new Tab(width*0.83, height*0.70, width*0.15, height*0.05, "Core Ejection", 1);
}


Spaceship s1;
Box b1, b2;
Radar r1;
CircleMenu c1, c2, c3, c4;
PowerSymbol p1;
Tab t1, t2, t3, t4, t5, t6, t7, t8, t9, t10;

void draw()
{
  drawBackground();
  s1.render();
  
  b1.drawBox();
  b2.drawBox();

  r1.update();
  
  c1.render();
  c1.centre();
  c2.render();
  c3.render();
  c4.render();
  
  t1.boxTab();
  t2.boxTab();
  t3.boxTab();
  t4.boxTab();
  t5.boxTab();
  t6.boxTab();
  t7.boxTab();
  t8.boxTab();
  t9.boxTab();
  t10.boxTab();
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