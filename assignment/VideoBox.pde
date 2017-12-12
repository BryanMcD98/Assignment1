class VideoBox
{
  float x, y;
  VideoBox(float xpos, float ypos)
  {
    x = xpos;
    y = ypos;
  }
  
  void render()
  {
    fill(#050817);
    rect(x, y, width*0.118, height*0.23);
    
    rect(x, y, width*0.02, height*0.115);
    rect(x, y+(height*0.115), width*0.02, height*0.115);
    
    fill(50, 240, 50);
    text("(", x+(width*0.011), y+height*0.075);
    fill(237, 50, 60);
    text(")", x+(width*0.011), y+height*0.179);
  }
}