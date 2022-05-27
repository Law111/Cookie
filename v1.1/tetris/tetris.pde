
  int x = 5;
  int y = 5;
  board n;

  void setup() {
    size(301, 601);
    n = new board();
    n.setup();
    n.board[x][y] = 1;
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
        y++;
        n.board[x][y] = 1;
      } else if (keyCode == LEFT) {;
        n.board[x][y] = 0;
        x--;
        n.board[x-1][y] = 1;
      } else if (keyCode == RIGHT) {
        n.board[x][y] = 0;
        x++;
        n.board[x][y] = 1;
      }
  }

 
