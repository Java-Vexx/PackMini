class Packman {

  float x = width/2;
  float y = height/3;
  float r = 30;
  float speed = 5;

  void show() {
    noStroke();
    fill(250, 250, 50);
    ellipse(x, y, r, r);
    switch(keyCode) {
    case LEFT:
      fill(0);
      ellipse(x-7, y-7, 7, 7);
      break;
    case RIGHT:
      fill(0);
      ellipse(x+7, y-7, 7, 7);
      break;
    case UP:
      break;
    case DOWN:
      fill(0);
      ellipse(x+7, y-7, 7, 7);
      fill(0);
      ellipse(x-7, y-7, 7, 7);
      break;
    }
  }


  //-------------------------------------------------------------------------

  void move() {
    //switch pour gerer les mouvements du personage.
    switch(keyCode) {
    case LEFT:
      x = x - speed;
      break;
    case RIGHT:
      x = x + speed;
      break;
    case UP:
      y = y - speed;
      break;
    case DOWN:
      y = y + speed;
      break;
    }


    if (x < 50 ) {
      x = width-50;
    }
    if (x > width-50) {
      x = 50;
    }
    if (y < 50 ) {
      y = height-210;
    }
    if (y > height-210) {
      y = 50;
    }
  }
}
