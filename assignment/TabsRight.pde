class TabRight
{
  float x, y, w, h, size;
  int style;
  String m;
  
  TabRight(float xpos, float ypos, float twidth, float theight, String message, int styleTab)
  {
    x = xpos;
    y = ypos;
    w = twidth;
    h = theight;
    m = message;
    style = styleTab;
    
  }
  void boxTab()
  {
    stroke(90, 220, 160, 80);
    noFill();
    rect(x, y, w, h); 
    fill(90, 220, 160);
    rect(x+(w), y, 10, h);
    
    if(style == 0)
    {
      fill(203, 33, 47);
      textFont(font, 24);
    }
    else
    {
      fill(90, 220, 160);
      textFont(font, 20);
    }
    if(mouseX > x && mouseX < x+w)
    {
      if(mouseY > y && mouseY < y+h)
      {  
          fill(203, 33, 47);
       }
    }
    textAlign(RIGHT);
    text(m, x+(w*0.9), y+(h*0.75));
    
    
        
     
  }  
}