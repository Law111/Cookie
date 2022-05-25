
  int x = 50;
  int y = 50;

  void setup() {
    size(300, 600);
    int x1 = 0;
    int y1 = 0;
    while(x1<300){
      line(x1,0,x1,600);
      x1+=30;
    }
  }

  void draw() {
    background(0);
    square(x, y, 30); 
    y+=0.01;
  }
  void keyPressed() {
    if (key == CODED) {
      } if (keyCode == DOWN) {
        y += 30;
      } else if (keyCode == LEFT) {
        x -= 30;
      } else if (keyCode == RIGHT) {
        x += 30; 
      }
  }

 
