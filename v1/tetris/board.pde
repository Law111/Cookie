class board{
  int[][] board;
  void setup(){
    board = new int[24][14];
    for(int i=0; i<24; i++){
      for(int j=0; j<14; j++){
        board[i][j] = -1;
      }
    }
    for(int i=2; i<22; i++){
      for(int j=2; j<12; j++){
        board[i][j] = 0;
      }
    }
  }
  void draw(){
    for(int i=2; i<22; i++){
      for(int j=2; j<12; j++){
        if(board[i][j] == 1){
          square(30*(i-2),30*(j-2),30);
        }
      }
    }
  }
}
