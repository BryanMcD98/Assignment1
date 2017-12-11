class Star
{
  float x, y, r, vertex1, vertex2, vertex3, vertex4;
  
  
  Star(float v1, float v2, float v3, float v4)
  {
    vertex1 = v1;
    vertex2 = v2;
    vertex3 = v3;
    vertex4 = v4;
    x = random(vertex1+10, vertex2-10);
    y = random(vertex3+10, vertex4-10);
    r =  random(4, 8);
  
  }
  
  void update()
  {
      x += random(-5, 5);
      y += random(-5, 5);
      if (x < vertex1+5)
      {
        x += 15;
      }
      if (x > vertex2-5)
      {
        x -= 15;
      }
      if (y < vertex3+5)
      {
        y += 15;
      }
      if (y > vertex4-5)
      {
        y -= 15;
      }
  }
  
  void show()
  {
    fill(#F4FFA2);
    noStroke();
    ellipse(x, y, r, r);
  }
}