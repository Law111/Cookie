class blockPiece{
  int r;
  int c;
  int rInit;
  int cInit;
  String blockLetter = "";
  void setup(int r1, int c1){
    rInit=r1;
    cInit=c1;
    r=r1;
    c=c1;
    if(n.board[r1][c1]==1){
      gameOver = true;
    }
    n.board[r][c]=2;
  }
  
  void moveRight(){
    if(n.board[r][c+1]==0 || n.board[r][c+1]==2){
      if(n.board[r][c-1]!=2){
        n.board[r][c] = 0;
      }
      c++;
      n.board[r][c] = 2;
    }
  }
  
  void moveLeft(){
    if(n.board[r][c-1]==0 || n.board[r][c-1]==2){
      if(n.board[r][c+1]!=2){
        n.board[r][c] = 0;
      }
      c--;
      n.board[r][c] = 2;
    }
  }
  
  void moveDown(){
    if(n.board[r+1][c]==0 || n.board[r+1][c]==2){
      n.board[r][c] = 0;
      r++;
      n.board[r][c] = 2;
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
        n.board[r+r1][c+c1] = 2;
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
     return n.board[r][c+1]==0 || n.board[r][c+1]==2;
  }
  
   boolean canMoveLeft(){
     return n.board[r][c-1]==0 || n.board[r][c-1]==2;
  }
  
  boolean canMoveDown(){
     return n.board[r+1][c]==0 || n.board[r+1][c]==2;
  }
}
