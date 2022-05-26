
  int x = 90;
  int y = 90;

  void setup() {
    size(300, 600);
  }

  void draw() {
    background(0);
    float x1 = 0;
    float y1 = 0;
    while(x1<300){
      stroke(255);
      line(x1,0,x1,600);
      x1+=30;
    }
    while(y1<600){
      stroke(255);
      line(0,y1,300,y1);
      y1+=30;
    }
    square(x, y, 30);
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

 
