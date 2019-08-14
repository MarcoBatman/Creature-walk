float xposition;
float yposition;
float sizeeye;
float sizemouth;
float sizenose;
float sizeface;
float sizebody;


void setup() {
  fullScreen();
  background(50,0,200);
  xposition = 500;
  yposition = 500;
  sizeeye = 50;
  sizemouth = 150;
  sizenose = 12.5;
  sizeface = 400;
  sizebody = 600;
};

void draw() {
  
  //gå
  xposition+= 10;
  yposition+= 10;
  //størelse
  sizeface+= 2;
  sizenose+= 0.1;
  sizeeye+= 0.3;
  sizebody+= 2;
  sizemouth+= 0.4;
  
clear();  
    //krop
  circle (xposition,yposition+400,sizebody);
  //hoved
  circle (xposition,yposition,sizeface);
  //øjne
  circle (xposition-75,yposition-100,sizeeye);
  circle (xposition+75,yposition-100,sizeeye);
  //næse
  circle (xposition+10,yposition-25,sizenose);
  circle (xposition-10,yposition-25,sizenose);
  //mund
  circle (xposition,yposition+75,sizemouth);



};
