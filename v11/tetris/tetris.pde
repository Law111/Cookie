  import java.util.LinkedList;
  import java.util.Queue;
  int x = 3;
  int y = 7;
  public board n;
  public block b;
  public Queue<String> bbQueue;
  int timer;
  public boolean gameOver;
  public int score;
  public int totalLinesCleared;
  public int level;

  void setup() {
    gameOver=false;
    level=0;
    size(501, 601);
    n = new board();
    b = new block();
    n.setup(20,10);
    // 20 x 10 board
    // le queue
    bbQueue = new LinkedList<String>();
    bbQueue.add(randomPiece());
    bbQueue.add(randomPiece());
    bbQueue.add(randomPiece());
    bbQueue.add(randomPiece());
    assignB(bbQueue.remove());
  }

  void draw() {
    if(!(gameOver)){
      background(0);
      n.draw();
      autoFall();
      float x1 = 0;
      float y1 = 0;
      // draw the grid 
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
      // Lets add lior
      textSize(25);
      fill(255,255,255);
      text("Score: " + score,330,25);
      text("Level: " + level,330,55);
      text("Lines: " + totalLinesCleared,330,85);
      text("Lior's bbQueue",330,115);
      
      // add the queue 
      block temp;
      for(int i=0; i<3;i++){
        if (((LinkedList)(bbQueue)).get(i).equals("I")){
          temp = new block();
          temp.setup(7+5*i,15);
        } else if (((LinkedList)(bbQueue)).get(i).equals("J")){
          temp = new blockJ();
          temp.setup(7+5*i,15);
        } else if (((LinkedList)(bbQueue)).get(i).equals("L")){
          temp = new blockL();
          temp.setup(7+5*i,15);
        } else if (((LinkedList)(bbQueue)).get(i).equals("O")){
          temp = new blockO();
          temp.setup(7+5*i,15);
        } else if (((LinkedList)(bbQueue)).get(i).equals("S")){
          temp = new blockS();
          temp.setup(7+5*i,15);
        } else if (((LinkedList)(bbQueue)).get(i).equals("T")){
          temp = new blockT();
          temp.setup(7+5*i,15);
        } else if (((LinkedList)(bbQueue)).get(i).equals("Z")){
          temp = new blockZ();
          temp.setup(7+5*i,15);
        }
      }
      
    } else {
      fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
      text("Lior",150,300);
    }
  }
  void autoFall(){
    if(totalLinesCleared/10 != level ){
      level++;
    }
    // speed doubles every level
    if(timer >= 60*Math.pow(0.5,level)) {
      b.moveDown();
      timer = 0;
    }
  }
  
  void keyPressed() {
    if(key == 'z'){
      b.rotateLeft();
    }
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
  
  String randomPiece(){
    double rand = Math.random()*7;
    if (rand < 1) {
      return "I";
    }
    else if (rand < 2) {
      return "J";
    }
    else if (rand < 3) {
      return "L";
    }
    else if (rand < 4) {
      return "O";
    }
    else if (rand < 5) {
      return "S";
    }
    else if (rand < 6) {
      return "T";
    }
    else {
      return "Z";
    }
  }
  
  void assignB(String letter){
    if (letter.equals("I")) {
      b = new block();
      b.setup(x,y);
    }
    else if (letter.equals("J")) {
      b = new blockJ();
      b.setup(x,y);
    }
    else if (letter.equals("L")) {
      b = new blockL();
      b.setup(x,y);
    }
    else if (letter.equals("O")) {
      b = new blockO();
      b.setup(x,y);
    }
    else if (letter.equals("S")) {
      b = new blockS();
      b.setup(x,y);
    }
    else if (letter.equals("T")) {
      b = new blockT();
      b.setup(x,y);
    }
    else {
      b = new blockZ();
      b.setup(x,y);
    }
  }

 
