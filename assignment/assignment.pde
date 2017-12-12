PFont font;

void setup()
{
  size(1300, 600);
  smooth();
  
  font = loadFont("ARDESTINE-28.vlw");
  
  s1 = new Spaceship(width * 0.147, height * 0.3, 45); 
  
  b1 = new Box(width * 0.02, height * 0.02, width * 0.254, height * 0.5);
  b2 = new Box(width * 0.02, height * 0.54, width * 0.254, height * 0.419);
  
  r1 = new Radar(width * 0.02, height * 0.54, width * 0.27, height * 0.9569, 5);
  
  c1 = new CircleMenu(width*0.63, height*0.5, 75);
  p1 = new PowerSymbol(width*0.63, height*0.5, 70);
  c2 = new CircleMenu(width*0.63, height*0.5, 150);
  c3 = new CircleMenu(width*0.63, height*0.5, 400);
  c4 = new CircleMenu(width*0.63, height*0.5, 525);
  
  tR1 = new TabRight(width*0.81, height*0.02, width*0.17, height*0.05, "Presets", 0);
  tR2 = new TabRight(width*0.82, height*0.09, width*0.16, height*0.05, "Default", 1);
  tR3 = new TabRight(width*0.83, height*0.16, width*0.15, height*0.05, "Hyperdrive", 1);
  tR4 = new TabRight(width*0.84, height*0.23, width*0.14, height*0.05, "Cruise Control", 1);
  tR5 = new TabRight(width*0.85, height*0.30, width*0.13, height*0.05, "Close Control", 1);
  tR6 = new TabRight(width*0.86, height*0.37, width*0.12, height*0.05, "Hover", 1);
  
  tR7 = new TabRight(width*0.81, height*0.91, width*0.17, height*0.05, "Emergency", 0);
  tR8 = new TabRight(width*0.82, height*0.84, width*0.16, height*0.05, "Shutdown", 1);
  tR9 = new TabRight(width*0.83, height*0.77, width*0.15, height*0.05, "Self-Destruct", 1);
  tR10 = new TabRight(width*0.84, height*0.70, width*0.14, height*0.05, "Core Ejection", 1);
  
  
  tL1 = new TabLeft(width*0.28, height*0.91, width*0.17, height*0.05, "Engine", 0);
  tL2 = new TabLeft(width*0.28, height*0.84, width*0.16, height*0.05, "Oil Temp: 3328°C", 1);
  tL3 = new TabLeft(width*0.28, height*0.77, width*0.14, height*0.05, "Coolant : 1234 L", 1);
  tL4 = new TabLeft(width*0.28, height*0.70, width*0.13, height*0.05, "Fuel : 83%", 1);
  
  tL5 = new TabLeft(width*0.28, height*0.02, width*0.17, height*0.05, "Sheilds", 0);
  tL6 = new TabLeft(width*0.28, height*0.09, width*0.16, height*0.05, "Stability : 78%", 1);
  tL7 = new TabLeft(width*0.28, height*0.16, width*0.15, height*0.05, "Forcefeild: 452 &", 1);
  
  lg1 = new LineGauge(16, "F", color(250, 180, 20));
  lg2 = new LineGauge(12, "W", color(18, 197, 250));
  lg3 = new LineGauge(19, "O", color(240, 250, 255));
  
  vb1 = new VideoBox(width*0.87, height*0.445);
}


Spaceship s1;
Box b1, b2;
Radar r1;
CircleMenu c1, c2, c3, c4;
PowerSymbol p1;
TabRight tR1, tR2, tR3, tR4, tR5, tR6, tR7, tR8, tR9, tR10;
TabLeft tL1, tL2, tL3, tL4,tL5, tL6, tL7;
LineGauge lg1, lg2, lg3;
VideoBox vb1;

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
  tL4.boxTab(); 
  
  tL5.boxTab(); 
  tL6.boxTab(); 
  tL7.boxTab();
  
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
  
  for(int i = 0; i < 20; i++)
  {
    lg1.render(width*0.29, height*0.615);
    lg2.render(width*0.33, height*0.615);
    lg3.render(width*0.37, height*0.615);
  }
  
  
  vb1.render();
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