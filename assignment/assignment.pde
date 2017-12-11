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
  
  tR1 = new TabRight(width*0.81, height*0.02, width*0.17, height*0.05, "Preset", 0);
  tR2 = new TabRight(width*0.83, height*0.09, width*0.15, height*0.05, "Default", 1);
  tR3 = new TabRight(width*0.83, height*0.16, width*0.15, height*0.05, "Hyperdrive", 1);
  tR4 = new TabRight(width*0.83, height*0.23, width*0.15, height*0.05, "Cruise Control", 1);
  tR5 = new TabRight(width*0.83, height*0.30, width*0.15, height*0.05, "Hover", 1);
  tR6 = new TabRight(width*0.83, height*0.37, width*0.15, height*0.05, "Close Navigation", 1);
  
  tR7 = new TabRight(width*0.81, height*0.91, width*0.17, height*0.05, "Emergency", 0);
  tR8 = new TabRight(width*0.83, height*0.84, width*0.15, height*0.05, "Shutdown", 1);
  tR9 = new TabRight(width*0.83, height*0.77, width*0.15, height*0.05, "Self-Destruct", 1);
  tR10 = new TabRight(width*0.83, height*0.70, width*0.15, height*0.05, "Core Ejection", 1);
  
  
  tL1 = new TabLeft(width*0.28, height*0.91, width*0.15, height*0.05, "Engine", 0);
  tL2 = new TabLeft(width*0.28, height*0.84, width*0.13, height*0.05, "Oil Temp: 3328°C", 1);
  tL3 = new TabLeft(width*0.28, height*0.77, width*0.13, height*0.05, "Fuel : 83%", 1);
}


Spaceship s1;
Box b1, b2;
Radar r1;
CircleMenu c1, c2, c3, c4;
PowerSymbol p1;
TabRight tR1, tR2, tR3, tR4, tR5, tR6, tR7, tR8, tR9, tR10;
TabLeft tL1, tL2, tL3;

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
 
  tL1.boxTab(); 
  tL2.boxTab(); 
  tL3.boxTab(); 
  
  tR1.boxTab();
  tR2.boxTab();
  tR3.boxTab();
  tR4.boxTab();
  tR5.boxTab();
  tR6.boxTab();
  tR7.boxTab();
  tR8.boxTab();
  tR9.boxTab();
  tR10.boxTab();
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