void building(float x, float y, float w, float h, float numWindows){
  float yCenter = y - h / 2;
  fill(150);
  rect(x, yCenter, w, h);
  // door height is building height / 3
  fill(135, 100, 95);
  rect(x, y - h / 8, w/4, h/4);
    windows(x, yCenter, w, numWindows);

}
void windows(float xCenter, float yCenter, float w, float numWindows){
  float xLeft = xCenter - w/2 ;
  fill(255);
  
  float n = 1;
  while(n <= numWindows){
  rect(xLeft + n * (w/(numWindows + 1)), yCenter, 15, 15);
  n = n + 1;
  }
}

void setup(){
  
size(1400, 600);
  rectMode(CENTER);
  
  for ( int b = 0; b <= 5; b = b + 1){
  
  for ( int i = 1; i <= 5; i = i + 1){
    building( (i * 50) + b * 300, i * 150, 200, 150, (int) random(1,7));
  }
  
  }
}
  
  
void draw(){
  
}
