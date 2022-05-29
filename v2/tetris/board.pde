class board{
  int[][] board;
  void setup(){
    board = new int[14][24];
    for(int i=0; i<14; i++){
      for(int j=0; j<24; j++){
        board[i][j] = -1;
      }
    }
    for(int i=2; i<12; i++){
      for(int j=2; j<22; j++){
        board[i][j] = 0;
      }
    }
  }
  void draw(){
    for(int i=2; i<12; i++){
      for(int j=2; j<22; j++){
        if(board[i][j] == 1){
          square(30*(i-2),30*(j-2),30);
        }
      }
    }
  }
}
