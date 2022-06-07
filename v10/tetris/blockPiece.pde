class blockPiece{
  int r;
  int c;
  int rInit;
  int cInit;
  char identity;
  int colorId;
  void setup(int r1, int c1, int id){
    rInit=r1;
    cInit=c1;
    r=r1;
    c=c1;
    colorId = id;
    // modified so that it will work with different ints
    if(n.board[r1][c1]<=-2){
      gameOver = true;
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
