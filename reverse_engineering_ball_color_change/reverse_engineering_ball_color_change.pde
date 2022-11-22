int x = 25;
int dx = 4;
int y = 25;
int dy = 8;
int R = 250;
int G = 30;
int B = 125;

void setup() {
  size(1000, 1000);
}

void draw() {
  background(200);
  strokeWeight(3);
  fill(R, G, B);
  circle(x, y, 50);
  x = x + dx;
  y = y + dy;
  
  if (x > 975) {
  dx = -5;
  R = 0;
  G = 0;
  B = 255;
  }
  
 if (x < 25) {
   dx = 5;
   R = 0;
   G = 255;
   B = 0;
   }
  
  if (y > 975){
  dy = -5;
  R = 0;
  G = 0;
  B = 0;
  }
  if (y < 25){
    dy = 5;
    R = 250;
    G = 30;
    B = 125;
  }
}
