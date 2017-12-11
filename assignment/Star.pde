class Star
{
  float x, y, vertex1, vertex2, vertex3, vertex4;
  
  
  Star(float v1, float v2, float v3, float v4)
  {
    vertex1 = v1;
    vertex2 = v2;
    vertex3 = v3;
    vertex4 = v4;
    x = random(v1, v2);
    y = random(v3, v4);
  
  }
  
  void update()
  {
      x += random(-5, 5);
      y += random(-5, 5);
  }
    
  }
  
  void show()
  {
    int r = (int) random(1, 8);
    fill(#F4FFA2);
    noStroke();
    
    float sx = map(x/z, 0, 1, v1, v2);
    float sy = map(y/z, 0, 1, v3, v4);
    ellipse(sx, sy, r, r);
  }
}