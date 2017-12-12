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
    textAlign(CENTER);
    textSize(27);
    fill(c);
    text(m, x+(width*0.01), y+(height*0.03));
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