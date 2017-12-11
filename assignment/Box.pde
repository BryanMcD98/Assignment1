class Box
{
  
  float x, y, w, h;
  Box(float xpos, float ypos, float boxWidth, float boxHeight)
  {
    x = xpos;
    y = ypos;
    w = boxWidth;
    h = boxHeight;
    
  }
  
  void drawBox()
  {
    stroke(90, 220, 160, 80);
    strokeWeight(1.5);
    noFill();
    rect(x, y, w, h);
  }
}