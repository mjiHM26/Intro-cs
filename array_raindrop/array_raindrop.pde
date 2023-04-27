//float[] dropYs = {70, 50, 90};
float y1 = 50;
int numDrops = 50;
float[] yPos = new float[numDrops];
float[] speeds = new float[numDrops];
int puddle = 10;

void setup() {
  size(1000, 600);
  
  for(int i = 0; i < numDrops; i++) {
    speeds[i] = random(5, 15);
    yPos[i] = random(-500, -50);
  }
}

void draw() {

  background(100);

  fill(0, 0, 200);
  for (int y = 0; y < 50; y = y + 1) {
    raindrop(20 * y + 20, yPos[y], 15, 30);

    yPos[y] = yPos[y] + speeds[y];

    if (yPos[y] > 650) {
      yPos[y] = 50;
    }
  }
  
  ellipse(500, 600, 1000, puddle);
  
  if (puddle < 1200){
      puddle = puddle + 1;
  }
  
  fill(255);
 textSize(40);
 text(puddle/2, 500, 100);
}


void raindrop(float xCenter, float yCenter,
  float w, float h) {
  triangle(xCenter - w/2, yCenter, xCenter + w/2,
    yCenter, xCenter, yCenter - h);

  arc(xCenter, yCenter, w, h, 0, PI);
}
