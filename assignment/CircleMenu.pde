class CircleMenu
{
  float x, y, r, s, r2, rotate, py;
  CircleMenu(float posx, float posy, float radius, float size, float speed)
  {
    x = posx;
    y = posy;
    r = radius;
    s = speed;
    r2 = size;
    rotate = 0;
    py = 0;
  }
  void render()
  {
    stroke(90, 220, 160, 80);
    noFill();
    ellipse(x, y, r, r);
    pushMatrix();
        stroke(203, 33, 47);
        translate(x, y);      
        rotate(rotate);
        ellipse(r/2, py, r2, r2);
     popMatrix();
     if(r2 % 2 == 0)
     {
       rotate += s;
     }
     else
     {
       rotate -= s;
     }
  }
  void centre()
  {
    p1.render();
  }
  
}