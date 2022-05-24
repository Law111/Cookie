
  int x = 50;
  int y = 50;

  void setup() {
    size(600, 600);
  }

  void draw() {
    background(0);
    ellipse(x, y, 30, 30); 
    y+=0.01;
  }
  void keyPressed() {
    if (key == CODED) {
      } if (keyCode == DOWN) {
        y += 5;
      } else if (keyCode == LEFT) {
        x -= 5;
      } else if (keyCode == RIGHT) {
        x += 5; 
      }
  }

 
