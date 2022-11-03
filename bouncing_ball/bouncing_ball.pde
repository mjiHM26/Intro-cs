int x = 25;
int dx = 5;
int y = 25;
int dy = 6;
int paddley = 0;

void setup() {
  size(1000, 1000);
}

void draw() {
  background(200);
  circle(x, y, 50);
  rect(0, paddley, 20, 150);
  x = x + dx;
  y = y + dy;
  
  if (x > 975) {
  dx = -5;
  }
  
 if (x < 25) {
   dx = 5;
   }
  
  if (y > 975){
  dy = -5;
  }
  if (y < 25){
    dy = 5;
  }
}

void keyPressed() {

  if (keyCode == UP){
  paddley = paddley - 20;
  }
  if (keyCode == DOWN){
    paddley = paddley + 20;
  }
  }

  
  
  
  
  
  
  
