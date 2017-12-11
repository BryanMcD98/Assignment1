class Tab
{
  float x, y, size;
  
  Tab(float xpos, float ypos, float s)
  {
    x = xpos;
    y = ypos;
    size = s;
    
    textFont(font, size);
  }
  
  void write()
  {
    fill(90, 220, 160);
    textAlign(RIGHT);
    text("Presets", x, y);
  }
  
  
}