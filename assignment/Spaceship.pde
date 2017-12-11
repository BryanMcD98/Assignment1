class Spaceship
{
  float x, y;
  float pos, rotSpeed; 
  Spaceship (float xpos, float ypos) 
  {  
    x = xpos;
    y = ypos; 
    //rotSpeed = s; 
  } 
   
  void update() 
  { 
    
  }  
    
  void render()
  {
    stroke(0, 255, 0, 90);
    noFill();
    
    triangle(x, y-200, x-100, y, x+100, y);
  }
}