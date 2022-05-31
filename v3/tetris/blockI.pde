class blockI extends block{
  void setup(int r, int c){
    n.board[r][c]=1;
    n.board[r+1][c]=1;
    n.board[r+2][c]=1;
    n.board[r+3][c]=1;
  }
  //void moveRight(){
  //  if(n.board[r][c+1]==0 && n.board[r+1][c+1]==0 && n.board[r+2][c+1]==0 && n.board[r+3][c+1]==0){
  //    n.board[r][c] = 0;
  //    n.board[r+1][c] = 0;
  //    n.board[r+2][c] = 0;
  //    n.board[r+3][c] = 0;
  //    c++;
  //    n.board[r][c] = 1;
  //    n.board[r+1][c] = 1;
  //    n.board[r+2][c] = 1;
  //    n.board[r+3][c] = 1;
  //  }
  //}
  
  //void moveLeft(){
  //  if(n.board[r][c-1]==0 && n.board[r+1][c-1]==0 && n.board[r+2][c-1]==0 && n.board[r+3][c-1]==0){
  //    n.board[r][c] = 0;
  //    n.board[r+1][c] = 0;
  //    n.board[r+2][c] = 0;
  //    n.board[r+3][c] = 0;
  //    c--;
  //    n.board[r][c] = 1;
  //    n.board[r+1][c] = 1;
  //    n.board[r+2][c] = 1;
  //    n.board[r+3][c] = 1;
  //  }
  //}
  
  //void moveDown(){
  //  if(n.board[r+4][c]==0){
  //    n.board[r][c] = 0;
  //    r+= 4;
  //    n.board[r][c] = 1;
  //  } else {
  //    if(n.rowFull(r)){
  //      n.removeRow(r);
  //    }
  //    r=rInit;
  //    c=cInit;
  //  }
  //}
}
