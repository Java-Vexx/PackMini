Damier da;
Packman pa;
Price pr;
Blinky bl;

void setup() {
  size(600, 800);
  pa = new Packman();
  pr = new Price();
  da = new Damier();
  bl = new Blinky();
}

void draw() {
  da.showBackground();
  da.showName();
  da.showInteface();
  da.intersectsPr();
  da.intersectsGh();
  da.livesCounter();
  da.showLives();

  pa.show(); 
  pa.move();

  pr.show();
  pr.showScore();

  if (pr.score >=  5) {
    bl.show();
    bl.move();
  }
}
