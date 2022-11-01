int x = 0;
int y = 400;
int sqw = 400;
int sqw2 = 0;
void setup(){
  size(1000, 1000);
}

void draw(){
  background(100);
fill(255, 0, 0, x);
x = x + 5;
circle(500, 500, 300);

fill(255, 255, 255);
triangle(150, 0, 150, 100, y, 50);
y = y + 5;

square(150, 0, sqw);
sqw = sqw - 8;

square(700, sqw2, 50);
sqw2 = sqw2 + 3;
if (sqw2 == 999){
sqw2 = 0;
}
}
