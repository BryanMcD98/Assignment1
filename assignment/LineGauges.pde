class LineGauge
{
  int count;
  String m;
  color c;
  
  LineGauge(int counter, String message, color col)
  {
    count = counter;
    m = message;
    c = col;
  }
  
  void render(float x, float y)
  {
    for(int i = 0; i < 20; i++)
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