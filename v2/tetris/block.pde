class block{
  int r;
  int c;
  int rInit;
  int cInit;
  void setup(int r1, int c1){
    rInit=r1;
    cInit=c1;
    r=r1;
    c=c1;
    n.board[r][c]=1;
  }
  
  void moveRight(){
    if(n.board[r][c+1]!=-1){
      n.board[r][c] = 0;
      c++;
      n.board[r][c] = 1;
    }
  }
  
  void moveLeft(){
    if(n.board[r][c-1]!=-1){
      n.board[r][c] = 0;
      c--;
      n.board[r][c] = 1;
    }
  }
  
  void moveDown(){
    if(n.board[r+1][c]==0){
      n.board[r][c] = 0;
      r++;
      n.board[r][c] = 1;
    } else {
      if(n.rowFull(r)){
        n.removeRow(r);
      }
      r=rInit;
      c=cInit;
    }
  }
}
