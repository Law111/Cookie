class blockI extends block{
  int r;
  int c;
  int rInit;
  int cInit;
  void setup(int r1, int c1){
    r=r1;
    c=c1;
    rInit=r1;
    cInit=c1;
    n.board[r][c]=1;
    n.board[r+1][c]=1;
    n.board[r+2][c]=1;
    n.board[r+3][c]=1;
  }
}
