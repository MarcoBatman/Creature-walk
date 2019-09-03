// Boldens kordinater
float ballX = 0, ballY = 0;

// Boxens kordinater
float boxX = 0, boxY = 0;

// Boldens radius
float rad= 50;

// Boxens størrelse
float boxSize = 1000;

// Boldens fart
float xSpeed = 24, ySpeed = 15;

// Bolden bliver i midten
float stay = 5;

// Box minder/større
float sizechange = 10;


void setup () {
  // størrelse vindu
  size(1000, 1000);
}

void draw () {
  // Farve af baggrund
  background(0,255,0);

  // rykker bolden
  ballX += xSpeed;

  // Box mindre
  boxX += stay;
  boxY += stay;
  boxSize -= sizechange;

  // Bolden bliver i box
  if (ballX > boxSize + boxX || ballX < boxX){
    xSpeed *= -1;
  }

  if (ballX> boxSize + boxX) {
    ballX -= 10;
  }
  if (ballX< boxX) {
    ballX += 10;
  } 

  ballY += ySpeed;
  if (ballY> boxSize + boxY || ballY< boxY) {
    ySpeed *= -1;
  } 

  if (ballY> boxSize + boxY) {
    ballY -= 10;
  }
  if (ballY< boxY) {
    ballY += 10;
  }




  // boxen bliver farvet og tegnet
  fill(0);
  stroke(0, 0, 255);
  rect(boxX, boxY, boxSize, boxSize);
  // detter er farven og hvor bloden bliver tegnet været skærm
  fill(255,0,0);
  noStroke();
  ellipse(ballX, ballY, rad, rad);

  //boxen er samme størelse 
  if (boxSize < 40 || boxSize > 1050 ) {
    stay *= -1;
    sizechange *= -1;
  }
}
