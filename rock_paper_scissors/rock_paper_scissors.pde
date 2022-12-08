String userChoice;
int comp;
void setup() {
  size(700, 700);
  comp = 3;
}

void draw() {
  background(150, 150, 150);
  if (userChoice == "Rock") {
    fill(255, 0, 0);
    text("You Picked Rock", 200, 300);
  }

  rect(10, 10, 200, 75);
  textSize(50);
  fill(0, 0, 0);
  text("Rock", 50, 50);
  fill(255);

  if (userChoice == "Paper") {
    fill(255, 0, 0);
    text("You Picked Paper", 200, 300);
  }

  rect(240, 10, 200, 75);
  fill(0, 0, 0);
  text("Paper", 275, 50);
  fill(255);

  if (userChoice == "Scissors") {
    fill(255, 0, 0);
    text("You Picked Scissors", 200, 300);
  }
  rect(470, 10, 200, 75);
  fill(0, 0, 0);
  text("Scissors", 475, 50);
  fill(255);


  if (comp == 0) {
    text("Computer Picked Rock", 150, 400);
  }
  if (comp == 1) {
    text("Computer Picked Paper", 150, 400);
  }
  if (comp == 2) {
    text("Computer Picked Scissors", 150, 400);
  }
  println(comp);
  
  if (userChoice == "Rock" && comp == 0 || userChoice == "Paper" && comp == 1 || userChoice == "Scissors" && comp == 2){
    text("Tied", 300, 550);
}
if(userChoice == "Rock" && comp == 2 || userChoice == "Paper" && comp == 0 || userChoice == "Scissors" && comp == 1){
  text("You Win", 300, 550);
}
if(userChoice == "Rock" && comp == 1 || userChoice == "Paper" && comp == 2 || userChoice == "Scissors" && comp == 0){
  text("You Lose", 300, 550);
}
}


void mousePressed() {
  if (mouseX >= 10 && mouseX <= 210 && mouseY >= 10 && mouseY <= 85) {
    userChoice = "Rock";
  } else if (mouseX >= 240 && mouseX <= 440 && mouseY >= 10 && mouseY <= 85) {
    userChoice = "Paper";
  } else if (mouseX >= 470 && mouseX <= 670 && mouseY >= 10 && mouseY <= 85) {
    userChoice = "Scissors";
  } else {
    userChoice = "Nothing";
  }

  if (userChoice == "Rock" || userChoice == "Paper" || userChoice == "Scissors") {
    comp = (int)random(3);
  }
  
}
