float xoff = 0.0;
float xincrement = 0.01; 
float laserSpeed = 40;
float y = 300;

void setup() {
  size(640, 360);
  background(0);
  noStroke();
}

void draw()
{
  // Create an alpha blended background
  fill(0);
  noStroke();
  rect(0,0,width,height);
  
  // float n = random(0,width);  // Try this line instead of noise
  
  // Get a noise value based on xoff and scale it according to the window's width
   float n = noise(xoff)*width;
  
  // With each cycle, increment xoff
  xoff += xincrement;
 
   
  // Draw triangle at screen bottom with x-axis location controlled by mouse
  fill(0,0,255);
  noStroke();
  triangle((mouseX-32), height, mouseX, (height-50), (mouseX+32), height);
  
  // Draw the ellipse at the value produced by perlin noise
  if (mouseX == n) {
     fill(0,0,255);
  } else {
    fill(255, 204, 0);
  }
  noStroke();
  ellipse(n, 0, 64, 64);
}

void mousePressed() {
  while (y > 0) {
    fill(255, 204, 0);
    rect(mouseX, y, 10, 30);
    y -= laserSpeed;
  }
  if (y < 0) {
    y = (height-52);
  }
}
