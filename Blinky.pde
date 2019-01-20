class Blinky {

  float x = 70;
  float y = 70;
  float r = 30;
  float speed = 5;
  float poids = 2.5;


  void show() {
    noStroke();
    fill(209, 96, 202);
    ellipse(x, y, r, r);
  }

  void move() {
    if (pa.x < x) {
      x = x - poids;
    }
    if (pa.x > x) {
      x = x + poids;
    }
    if (pa.y < y) {
      y = y - poids;
    }
    if (pa.y > y) {
      y = y + poids;
    }
  }
}
