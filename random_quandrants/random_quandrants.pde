int x;
int y;
float circlesize;

int shapetype;
void setup() {
  size(400, 400);
}

void draw() {
  x = (int) random(400);
  y = (int) random(400);

  if (x >= 200 && y >= 200) {
    fill(255, 0, 0);
  } else if (x <= 200 && y <= 200) {
    fill(0, 255, 0);
  } else if (x >= 200 && y <= 200) {
    fill(0, 0, 255);
  } else if (x <= 200 && y >= 200)
  {
    fill (255, 225, 0);
  }

  circle(x, y, 20);
}
