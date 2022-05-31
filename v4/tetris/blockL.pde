class blockL extends block{
  void setup(int r, int c){
    n.board[r][c]=1;
    n.board[r+1][c]=1;
    n.board[r+2][c]=1;
    n.board[r+2][c+1]=1;
  }
}
