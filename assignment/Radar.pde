class Radar
{
  float x, y, x2, y2, s;
  Radar(float xpos, float ypos, float xpos2, float ypos2,float speed)
  {
      x = xpos;
      y = ypos;
      x2 = xpos2;
      y2 = ypos2;
      s = speed;
  }
  
  void update()
  {
  /*
    if (y > height) { 
      y = 0; 
    }*/
    line(x,y, x2, y2);
  }
}