class CircleMenu
{
  float x, y, r;
  CircleMenu(float posx, float posy, float radius)
  {
    x = posx;
    y = posy;
    r = radius;
   
  }
  
  void render()
  {
    stroke(90, 220, 160, 80);
    noFill();
    ellipse(x, y, r, r);
    
  }
}