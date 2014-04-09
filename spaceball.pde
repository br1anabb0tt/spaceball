float xoff = 0.0;
float xincrement = 0.01; 

void setup() {
  size(640, 360);
  background(0);
  noStroke();
}

void draw()
{
  // Create an alpha blended background
   fill(0,100);
  rect(0,0,width,height);
  
  // Get a noise value based on xoff and scale it according to the window's width
   float n = noise(xoff)*width;
  
  // With each cycle, increment xoff
  xoff += xincrement;
  
  // Draw the ellipse at the value produced by perlin noise
  fill(200);
  ellipse(n,height/200, 64, 64);
}

