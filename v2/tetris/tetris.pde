int x = 5;
  int y = 5;
  public board n;
  block b;

  void setup() {
    size(301, 601);
    n = new board();
    b = new block();
    n.setup(20,10);
    // 20 x 10 board
    b.setup(x,y);
  }

  void draw() {
    background(0);
    n.draw();
    float x1 = 0;
    float y1 = 0;
    while(x1<=300){
      stroke(255);
      line(x1,0,x1,600);
      x1+=30;
    }
    while(y1<=600){
      stroke(255);
      line(0,y1,300,y1);
      y1+=30;
    }
    // delay(500);
  }
  
  void keyPressed() {
    if (key == CODED) {
      } if (keyCode == DOWN) {
        b.moveDown();
      } else if (keyCode == LEFT) {;
        b.moveLeft();
      } else if (keyCode == RIGHT) {
        b.moveRight();
      }
  }

 
