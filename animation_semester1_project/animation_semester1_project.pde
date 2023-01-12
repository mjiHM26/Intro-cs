float rx1 = 200;
float ry1 = 400;
float rx2 = 400;
float ry2 = 400;
float bx1 = 300;
float by1 = 200;
float bx2 = 500;
float by2 = 300;
float wx1 = 300;
float wy1 = 350;
float wx1d = 3;
float wy1d = 3;
int gx1 = 230;
int gx1d = 2;
float rx1d = -3;
float ry1d = -3;
float rx2d = -3;
float ry2d = -3;
float bx1d = 3;
float by1d = 3;
float bx2d = 3;
float by2d = 3;
float rand = 0;
float rand2 = 0;
int redscore = 0;
int bluescore = 0;
String redscored = "Red Scored!";
String bluescored = "Blue Scored!";
int timer = 1;
int dtimer = 0;
int timer2 = 1;
int dtimer2 = 0;

void setup() {
  size(600, 700);

  rx1 = 200;
  ry1 = 350;
}

void draw() {
  background(0, 150, 0);
  textSize(50);

  strokeWeight(3);

  //out of bounds
  stroke(249, 214, 61);
  line(0, 0, 200, 55);
  line(0, 55, 200, 0);
  line(0, 55, 200, 55);

  line(400, 0, 600, 55);
  line(400, 55, 600, 0);
  line(400, 55, 600, 55);

  line(0, 645, 200, 645);
  line(0, 645, 200, 700);
  line(0, 700, 200, 645);

  line(400, 645, 600, 645);
  line(400, 645, 600, 700);
  line(400, 700, 600, 645);

  stroke(0, 0, 0);

  //goal 1
  fill(255);
  rect(200, 690, 200, 10);
  rect(200, 640, 10, 50);
  rect(390, 640, 10, 50);

  //goal 2 (top)
  fill(255);
  rect(200, 0, 200, 10);
  rect(200, 10, 10, 50);
  rect(390, 10, 10, 50);

  //red goalie
  fill(200, 50, 0);
  circle(gx1, 650, 30);
  gx1 = gx1+gx1d;
  if (gx1 < 225) {
    gx1d = gx1d + 2;
  }
  if (gx1 > 375) {
    gx1d = - 2;
  }
  // blue goalie
  fill(0, 50, 200);
  circle(gx1, 50, 30);
  gx1 = gx1+gx1d;
  if (gx1 < 225) {
    gx1d = gx1d + 2;
  }
  if (gx1 > 375) {
    gx1d = - 2;
  }

  //random player speeds
  float rand = (float)random(3, 5);
  float rand2 = (float)random(2, 3);
  float rand3 = (float)random(3, 6);

  // red player 1
  fill(255, 0, 0);
  circle(rx1, ry1, 30);
  rx1 = rx1 + rx1d;
  ry1 = ry1 + ry1d;

  if (rx1 > 545) {
    rx1d = -rand;
  }
  if (ry1 > 645) {
    ry1d = -rand;
  }
  if (ry1 < 55) {
    ry1d = rand;
  }
  if (rx1 < 55) {
    rx1d = rand;
  }
  if (ry1 > 615 && rx1 > 180 && rx1 < 390) {
    ry1d = -rand;
    rx1d = -rand;
  }
  if (ry1 < 70 && rx1 > 190 && rx1 < 400) {
    rx1d = rand;
    ry1d = rand;
  }

  //red player 2
  fill(255, 0, 0);
  circle(rx2, ry2, 30);
  rx2 = rx2 + rx2d;
  ry2 = ry2 + ry2d;

  if (rx2 > 545) {
    rx2d = -rand3;
  }
  if (ry2 > 645) {
    ry2d = -rand3;
  }
  if (ry2 < 55) {
    ry2d = rand3;
  }
  if (rx2 < 55) {
    rx2d = rand3;
  }
  if (ry2 > 615 && rx2 > 180 && rx2 < 390) {
    ry2d = -rand3;
    rx2d = -rand2;
  }
  if (ry2 < 70 && rx2 > 190 && rx2 < 400) {
    rx2d = rand3;
    ry2d = rand3;
  }

  //blue player 1
  fill(0, 0, 255);
  circle(bx1, by1, 30);
  bx1 = bx1 + bx1d;
  by1 = by1 + by1d;

  if (bx1 > 545) {
    bx1d = -rand;
  }
  if (by1 > 645) {
    by1d = -rand;
  }
  if (by1 < 55) {
    by1d = rand;
  }
  if (bx1 < 55) {
    bx1d = rand;
  }
  if (by1 > 615 && bx1 > 180 && bx1 < 390) {
    by1d = -rand;
    bx1d = -rand;
  }
  if (by1 < 70 && bx1 > 190 && bx1 < 400) {
    bx1d = rand;
    by1d = rand;
  }
  //blue player 2
  fill(0, 0, 255);
  circle(bx2, by2, 30);
  bx2 = bx2 + bx2d;
  by2 = by2 + by2d;

  if (bx2 > 545) {
    bx2d = -rand2;
  }
  if (by2 > 645) {
    by2d = -rand2;
  }
  if (by2 < 55) {
    by2d = rand2;
  }
  if (bx2 < 55) {
    bx2d = rand2;
  }
  if (by2 > 615 && bx2 > 180 && bx2 < 390) {
    by2d = -rand2;
    bx2d = -rand2;
  }
  if (by2 < 70 && bx2 > 190 && bx2 < 400) {
    bx2d = rand2;
    by2d = rand2;
  }

  timer = timer + dtimer;

  fill(255);
  circle(wx1, wy1, 25);
  wx1 = wx1 + wx1d;
  wy1 = wy1 + wy1d;

  if (wx1 > 585) {
    wx1d = -rand3;
  }
  if (wy1 > 645 && wx1 < 200 || wy1 > 645 && wx1 > 400) {
    wy1d = -rand3;
  }
  if (wy1 < 65 && wx1 < 200 || wy1 < 65 && wx1 > 400) {
    wy1d = rand3;
  }
  if (wy1 < 20) {
    wy1d = rand3;
    redscore = redscore + 1;
    print(redscore);
    dtimer2 = 1;
  }
  if (wx1 < 15) {
    wx1d = rand3;
  }
  timer = timer + dtimer;
timer2 = timer2 + dtimer2;

  if (wy1 > 685) {
    wy1d = -rand3;
    bluescore = bluescore + 1;
    print(bluescore);
    dtimer = 1;
  }
   if (timer >= 50)
  {
    timer = 0;
    dtimer = 0;
  } 
  else if (timer > 2) {
    text(bluescored, 200, 350);
  } 
  println(timer);
  
   if (timer2 >= 50)
  {
    timer2 = 0;
    dtimer2 = 0;
  } 
  else if (timer2 > 2) {
    text(redscored, 200, 350);
  }

  fill(255, 0, 0);
  text(redscore, 500, 600);
  fill(0, 0, 255);
  text(bluescore, 500, 100);
}
