class board{
  // the first index is the row the second is the column 
  int[][] board;
  int r;
  int c;
  void setup(int r1, int c1){
    r=r1;
    c=c1;
    board = new int[r+4][c+4];
    for(int i=0; i<r+4; i++){
      for(int j=0; j<c+4; j++){
        board[i][j] = -1;
      }
    }
    for(int i=2; i<r+2; i++){
      for(int j=2; j<c+2; j++){
        board[i][j] = 0;
      }
    }
  }
  void draw(){
    for(int i=2; i<r+2; i++){
      for(int j=2; j<c+2; j++){
        if(board[i][j] == 1){
          square(30*(j-2),30*(i-2),30);
        }
        if(board[i][j] == 2 ){
          square(30*(j-2),30*(i-2),30);
        }
      }
    }
  }
  
  boolean rowFull(int row){
    //all the rows will have the same c coordinate
    for(int c1=2; c1<c+2; c1++){
      if (board[row][c1]!=1){
        return false;
      }
    }
    return true;
  }
  
  void removeRow(int row){
    for(int r1=row; r1>2; r1--){
      for(int c1=2; c1<c+2; c1++){
        board[r1][c1] = board[r1-1][c1];
      }
    }
  }
}
