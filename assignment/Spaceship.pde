class Spaceship
{
  float x, y, l;
  Spaceship (float xpos, float ypos, float size) 
  {  
    x = xpos;
    y = ypos; 
    l = size;
  } 
   
  void render()
  {
    stroke(60, 200, 60, 90);
    strokeWeight(1.5);
    noFill();
    
    //Head
    triangle(x, y-(2.5*l), x-l, y, x+l, y);
    
    //Body
    strokeWeight(1.25);
    rect(x - l, y, (2 * l), l);
    
    //Wings
    rect(x + l, y+(l*0.4), (l*0.4), (l*0.25));
    rect(x + (l*1.4), y-(l*0.8), (l*0.75), (l*2));
    
    rect(x - (l*1.4), y+(l*0.4), (l*0.4), (l*0.25));
    rect(x - (l*2.15), y-(l*0.8), (l*0.75), (l*2));
    
    //Guns
    rect(x+(l*1.725), y-(l*1.1), (l*0.1), (l*0.3));
    rect(x-(l*1.825), y-(l*1.1), (l*0.1), (l*0.3));
    
    //Thrusters
    strokeWeight(1.5);
    arc(x-(l/2), y+l, (l*0.8), (l/2), 0, PI);
    arc(x+(l/2), y+l, (l*0.8), (l/2), 0, PI);
    
    arc(x+(l*1.775), y+(l*1.2), (l*0.5), (l/5), 0, PI);
    arc(x-(l*1.775), y+(l*1.2), (l*0.5), (l/5), 0, PI);
    
  }
}