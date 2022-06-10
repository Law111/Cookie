class board{
  // the first index is the row the second is the column 
  int[][] board;
  int r;
  int c;
  void setup(int r1, int c1){
    r=r1;
    c=c1;
    board = new int[r+6][c+10];
    for(int i=0; i<r+6; i++){
      for(int j=0; j<c+6; j++){
        board[i][j] = -1;
      }
    }
    for(int i=3; i<r+3; i++){
      for(int j=3; j<c+3; j++){
        board[i][j] = 0;
      }
    }
  }
  void draw(){
    for(int i=3; i<r+6; i++){
      // change to have more columns so we can implemtn the queue, and clear those columns
      for(int j=3; j<c+10; j++){
        if(board[i][j] == 1){
          square(30*(j-3),30*(i-3),30);//finish color here
        }
        else if(board[i][j] == 2 ){
          square(30*(j-3),30*(i-3),30);
        }
        else if(board[i][j] == 3 || board[i][j] == -3){
          fill(0, 255, 255);
          square(30*(j-3),30*(i-3),30);
        }
        else if(board[i][j] == 4 || board[i][j] == -4){
          fill(0, 0, 255);
          square(30*(j-3),30*(i-3),30);
        }
        else if(board[i][j] == 5 || board[i][j] == -5){
          fill(255, 127, 0);
          square(30*(j-3),30*(i-3),30);
        }
        else if(board[i][j] == 6 || board[i][j] == -6){
          fill(255, 255, 0);
          square(30*(j-3),30*(i-3),30);
        }
        else if(board[i][j] == 7 || board[i][j] == -7){
          fill(0, 255, 0);
          square(30*(j-3),30*(i-3),30);
        }
        else if(board[i][j] == 8 || board[i][j] == -8){
          fill(128, 0, 128);
          square(30*(j-3),30*(i-3),30);
        }
        else if(board[i][j] == 9 || board[i][j] == -9){
          fill(255, 0, 0);
          square(30*(j-3),30*(i-3),30);
        }
      }
    }
  }
  // modified so that it will work with different ints
  boolean rowFull(int row){
    //all the rows will have the same c coordinate
    for(int c1=3; c1<c+3; c1++){
      if (board[row][c1]>=-2){
        return false;
      }
    }
    return true;
  }
  
  void removeRow(int row){
    for(int r1=row; r1>3; r1--){
      for(int c1=3; c1<c+3; c1++){
        board[r1][c1] = board[r1-1][c1];
      }
    }
  }
  
  int getR(){
    return r;
  }
  
  int getC(){
    return c;
  }
}
