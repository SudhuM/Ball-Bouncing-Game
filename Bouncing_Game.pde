Ball b;
pole p;
int Score = 0;
boolean gameState = false;
void setup() {
  size(640, 480);
  b = new Ball();
  b.ballCreate();
  p = new pole();
  p.poleCreate();
}

void draw() {
  background(0);
  if (gameState) {
    b.show();
    b.update(); 
    p.show();
    p.update();
    updateScore();
    p.bounce();
  } else {
    textSize(25);
    textAlign(CENTER);
    text("Click here to Play the game!", width/2, height/2);
    if(mousePressed)  gameState = true;
  }
}
void updateScore() {
  textSize(20);
  fill(150, 205, 60);
  text("Score : " + Score, 50, 25);
}
void keyPressed() {
  if (keyCode == RIGHT) {
    p.xspeed = 5;
  } else if (keyCode == LEFT) {
    p.xspeed =-5;
  } else if (keyCode == ENTER) {
    b.yvel = 3;
    Score =0;
    b.ballCreate();
    loop();
  } else if (key ==  ' ') {
    gameState = false;
    exit();
  }
}
void keyReleased() {
  p.xspeed = 0;
}