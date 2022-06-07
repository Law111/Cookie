class blockPiece{
  int r;
  int c;
  int rInit;
  int cInit;
  String blockLetter = "";
  char identity;
  int colorId;
  void setup(int r1, int c1, char id){
    rInit=r1;
    cInit=c1;
    r=r1;
    c=c1;
    identity = id;
    if(n.board[r1][c1]==1){
      gameOver = true;
    }
    if (identity == 'i') {
     colorId=3;
    }
    else if (identity == 'j') {
      colorId=4;
    }
    else if (identity == 'l') {
      colorId=5;
    }
    else if (identity == 'o') {
      colorId=6;
    }
    else if (identity == 's') {
      colorId=7;
    }
    else if (identity == 't') {
      colorId=8;
    }
    else {
      colorId=9;
    }
    n.board[r][c]=colorId;
  }
 
  void moveRight(){
    if(n.board[r][c+1]==0 || n.board[r][c+1]==colorId){
      if(n.board[r][c-1]!=colorId){
        n.board[r][c] = 0;
      }
      c++;
      n.board[r][c] = colorId;
    }
  }
  
  void moveLeft(){
    if(n.board[r][c-1]==0 || n.board[r][c-1]==colorId){
      if(n.board[r][c+1]!=colorId){
        n.board[r][c] = 0;
      }
      c--;
      n.board[r][c] = colorId;
    }
  }
  
  void moveDown(){
    if(n.board[r+1][c]==0 || n.board[r+1][c]==colorId){
      n.board[r][c] = 0;
      r++;
      n.board[r][c] = colorId;
    } else {
      n.board[r][c] = 1;
      if(n.rowFull(r)){
        n.removeRow(r);
      }
    }
  }
  
  void clear(){
    n.board[r][c]=0;
  }
  
  void move(int r1, int c1){
    if(canMove(r1,c1)){
        n.board[r+r1][c+c1] = colorId;
        r += r1;
        c += c1;
    }
  }
  
  boolean canMove(int r1, int c1){
    return n.board[r+r1][c+c1] == 0;
  }
  
  int getR(){
    return r;
  }
  
  int getC(){
    return c;
  }
  
  boolean canMoveRight(){
     return n.board[r][c+1]==0 || n.board[r][c+1]==colorId;
  }
  
   boolean canMoveLeft(){
     return n.board[r][c-1]==0 || n.board[r][c-1]==colorId;
  }
  
  boolean canMoveDown(){
     return n.board[r+1][c]==0 || n.board[r+1][c]==colorId;
  }
}
