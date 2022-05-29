int x = 5;
  int y = 5;
  public board n;
  block b;
  int timer;

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
    autoFall();
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
    timer++;
  }
  void autoFall(){
    if(timer >= 60) {
      b.moveDown();
      timer = 0;
    }
  }
  
  void keyPressed() {
    if (key == CODED) {
      } if (keyCode == DOWN) {
        b.moveDown();
        timer = 0;
      } else if (keyCode == LEFT) {;
        b.moveLeft();
      } else if (keyCode == RIGHT) {
        b.moveRight();
      }
  }

 
