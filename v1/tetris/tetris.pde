
  int x = 90;
  int y = 90;
  board n;

  void setup() {
    size(301, 601);
    n = new board();
    n.setup();
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
  }
  
  void keyPressed() {
    if (key == CODED) {
      } if (keyCode == DOWN) {
        n.board[x][y] = 0;
        n.board[x][y+1] = 1;
        y += 30;
      } else if (keyCode == LEFT) {
        x -= 30;
      } else if (keyCode == RIGHT) {
        x += 30; 
      }
  }

 
