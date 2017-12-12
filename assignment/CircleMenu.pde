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
        translate(x, y);      
        rotate(rotate);
        ellipse(r/2, py, r2, r2);
     popMatrix();
     rotate += s;
  }
  void centre()
  {
    p1.render();
  }
  
}