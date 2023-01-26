void setup() {

size(700, 700);
} 

void draw() {
  push();
 translate(300, 300);
 thing();
  
  translate(200, 200);
  thing();
  
 translate(50, 100);
 thing();
 pop();
 
push();
 translate(100, 300);
 thing();
  pop();
 
  
}
void thing() {
  push();
  translate(-200, -350);
  beginShape();
  vertex(100, 300);
  vertex(150, 400);
  vertex(400, 400);
  vertex(200, 300);
  endShape(CLOSE);
  pop();
}
