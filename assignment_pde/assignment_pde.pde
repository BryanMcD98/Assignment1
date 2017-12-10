void setup()
{
  size(1000, 600);
}

void draw()
{
  background(#050817);
  float x, y;
  float r = 1.75;
  for( x = 0; x < width; x += 20)
  {
    for(y = 0; y <height; y += 20)
    {
       fill(255);
       ellipse(x, y, r, r);
     }
   }
}