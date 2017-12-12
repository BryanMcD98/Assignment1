class LineGauge
{
  float x, y;
  int count;
  String m;
  color c;
  
  LineGauge(float xpos, float ypos, int counter, String message, color col)
  {
    x = xpos;
    y = ypos;
    count = counter;
    m = message;
    c = col;
  }
  
  void render()
  {
    for(int i = 0; i < 10; i++)
    {
      if(i<count)
      {
        stroke(c);
      }
      else
      {
        stroke(90, 220, 160, 80);
      }
      y = y - 10;
      line(x, y, x+(width*0.02), y);
    }  
  }
  
  
}