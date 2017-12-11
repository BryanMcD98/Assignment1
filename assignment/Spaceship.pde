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
    float l = 80;
    stroke(0, 255, 0, 90);
    strokeWeight(1);
    noFill();
    
    //Head
    triangle(x, y-(2.5*l), x-l, y, x+l, y);
    
    //Body
    strokeWeight(0.5);
    rect(x - l, y, (2 * l), l);
    
    //Wings
    rect(x + l, y+(l*0.4), (l*0.25), (l*0.25));
    rect(x - (l*1.25), y+(l*0.4), (l*0.25), (l*0.25));
    
    //Guns
    
    
    //Thrusters
    strokeWeight(1);
    arc(x-(l/2), y+l, (l*0.8), (l/2), 0, PI);
    arc(x+(l/2), y+l, (l*0.8), (l/2), 0, PI);
    
    
  }
}