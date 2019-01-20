class Price {

  float x = random(50, width-50); 
  float y = random(50, height-400); 
  float r = 10;
  int score = 0;

  void show() {
    if (da.intersectsPr) {
      x = random(50, width-50);
      y = random(50, height-400);
    }else
    rectMode(CENTER);
    stroke(255);
    strokeWeight(2);
    fill(201, 101, 35);
    rect(x, y, r, r, 3);
  }

  void showScore() {
    if (da.intersectsPr) {
      score++;
      println(score);
    }
  }
}
