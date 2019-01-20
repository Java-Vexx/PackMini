class Damier {

  boolean intersectsPr;
  boolean intersectsGh;
  float d;
  int lives = 3;

  void showBackground() {
    rectMode(CENTER);
    background(0);
    strokeWeight(8);
    stroke(13, 24, 121);
    noFill();
    rect(300, 320, 560, 600, 7);
    rect(300, 700, 560, 140, 7);
    strokeWeight(1);
    for (int x = -1; x < 600; x +=20) {
      for (int y = -1; y < 600; y +=20) {
        line(x, 20, x, height-180);
        line(20, y, width-20, y);
      }
    }
  }

  void showInteface() {
    textAlign(CENTER);
    fill(255);
    stroke(255);
    PFont font = loadFont("Pacmania-48.vlw");
    textFont(font, 24);
    text("Score :", 400, 680);
    text("Lives: ", 400, 720);
    text(pr.score, 500, 680);
  }

  void showLives() {
    for (int i = 0; i < lives; ++i) {
      noStroke();
      fill(250, 250, 50);
      ellipse(460+(i*30), 710, 20, 20);
      fill(0);
      ellipse(460+(i*30)+2, 710-2, 2, 2);
    }
  }

  void livesCounter() {
    if (intersectsGh) {
      if (lives < 4 && lives > 1) {
        lives--;
        intersectsGh = false;
        pa.x = width/2;
        pa.y = height/3;
        delay(1000);
      } else {
        text("GAME OVER", width/2, height/2);
        delay(1000);
      }
    }
  }

  void showName() {
    fill(250, 250, 50);
    stroke(255);
    PFont font = loadFont("Pacmania-48.vlw");
    textFont(font, 64);
    text("PacMini", 180, 720);
  }
  boolean intersectsPr() {  
    d = dist(pa.x, pa.y, pr.x, pr.y);
    if (d < (pa.r/2) + (pr.r/4)) {
      intersectsPr = true;
    } else { 
      intersectsPr = false;
    }
    return intersectsPr;
  }

  boolean intersectsGh() {  
    d = dist(pa.x, pa.y, bl.x, bl.y);
    if (d < (pa.r/2) + (bl.r/4)) {
      intersectsGh = true;
    } else { 
      intersectsGh = false;
    }
    return intersectsGh;
  }
}
