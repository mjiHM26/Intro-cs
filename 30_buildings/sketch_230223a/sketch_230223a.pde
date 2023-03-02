void building(float x, float y, float w, float h){
  float yCenter = y - h / 2;
  fill(150);
  rect(x, yCenter, w, h);
  // door height is building height / 3
  fill(135, 100, 95);
  rect(x, y - h / 8, w/4, h/4);
    windows(x, yCenter, w, 4);
}

void windows(float xCenter, float yCenter, float w, float numWindows){
  float xLeft = xCenter - w/2 ;
  rect(xLeft + 2 * w/3, yCenter, 20, 20);
  rect(xLeft + w/3, yCenter, 20, 20);
  
}


void setup(){
  
size(1000, 600);
  rectMode(CENTER);
  
}

void draw(){
  building(100, 550, 100, 200);
  building(300, 500, 100, 300);
  
}
