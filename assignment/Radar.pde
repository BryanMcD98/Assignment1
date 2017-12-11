class Radar
{
  float x, y, x2, y2, s;
  Radar(float xpos, float ypos, float speed)
  {
      x = xpos;
      y = ypos;
      s = speed;
  }
  
  void update()
  {
    x += s;
    y += s;
    
    if (y > height) { 
      y = 0; 
    }
    line(x,y, x2, y2);
  }
}