class PowerSymbol
{
  float x, y, l;
  PowerSymbol(float xpos, float ypos, float size)
  {
    x = xpos;
    y = ypos;
    l = size/2;
  }
  
  void render()
  {
    noStroke();
    fill(203, 33, 47);
  
    triangle(x-(l*0.01), y+(l*0.15), x-(l*0.7), y+(l*0.15), x+(l*0.15), y-l);
    triangle(x+(l*0.01), y-(l*0.15), x+(l*0.7), y-(l*0.15), x-(l*0.15), y+l);
  }
}