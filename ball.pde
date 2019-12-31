class Ball {
  float xpos, ypos, size; 
  float xvel=5, yvel=4;

  void ballCreate() {
    this.xpos = random(10,width);
    this.ypos = 0;
    size = 20;
  }
  void show() {
    fill(255, 0, 0);
    ellipse(xpos, ypos, size, size);
  }
  void update() {
    xpos += xvel;
    ypos +=yvel;

    if (xpos < 0 || xpos > width) {
      xvel *=-1;
    } else if (ypos < 0 ) {
      yvel *=-1;
    }else if (ypos > height){
      textSize(25);
      fill(255,0,0);
      textAlign(CENTER);
      text("Game Over!!\n press Enter to Continue or Space bar to Exit",width/2,height/2);
      noLoop();
    }
  }
}