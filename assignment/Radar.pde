class Radar
{
  float x, y, x2, y2, s;
  float startX, startX2, startY, startY2;
  Radar(float xpos, float ypos, float xpos2, float ypos2,float speed)
  {
      x = xpos;
      y = ypos;
      x2 = xpos2;
      y2 = ypos2;
      s = speed;
      
      startX = x;
      startX2 = x2;
      startY = y;
      startY2 = y2;
      x2 = x;
      y2 = y;
  }
  
 
  
  void update()
  {    
    x += s;
    y2 += s;
    
    if(x > startX2)
    {
      x = startX;
    }
    if(y2 > startY2)
    {
      y2 = startY;
    }
    line(x,y, x2, y2);
    
    ellipse(x, y, 10, 10);
    
    ellipse(x2, y2, 10, 50);
    
    ellipse(startX, startY, 20, 20);
    ellipse(startX2, startY2, 20, 20);
  }
}