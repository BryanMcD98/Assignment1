Star[] stars = new Star[50];

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
      
      for( int i = 0; i < stars.length; i++)
      {
        stars[i] = new Star(startX, startX2, startY, startY2);
      }
      
    }
  
  void update()
  {    
    x += s;
    y2 += s;
    
    for( int i = 0; i < stars.length; i++)
    {
        stars[i].show();
    }
    stroke(255);
    line(x,y, x2, y2);
    if(x > startX2)
    {
      x = startX2;
      y += s;
      if(y > startY2)
      {
        x = startX;
        y = startY;
      }
      
    }
    
    if(y2 > startY2)
    {
      y2 = startY2;
      x2 += s;
      if(x2 > startX2)
      {
        for( int i = 0; i < stars.length; i++)
        {
          stars[i].update();
        }
        
        x2 = startX;
        y2 = startY;
        
      }
      
    }
    
  }
  
  void stars()
  {
    
  }
}