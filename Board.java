public class Board {
  private int[][] board;

  public Board(){
    board = new int[14][22];
    for(int i=0; i<14; i++){
      for(int j=0; j<22; j++){
        board[i][j] = -1;
      }
    }
    for(int i=2; i<12; i++){
      for(int j=0; j<20; j++){
        board[i][j] = 0;
      }
    }
  }

  public String toString(){
    String retStr = "";
    int i,j;
    for( i=0; i < 14; i++ ) {
      for( j=0; j < 22; j++ )
        retStr = retStr + String.format( "%3d", board[i][j] );
      //"%3d" allots 3 spaces for each number
      retStr = retStr + "\n";
    }
    return retStr;
  }

  public static void main(String[] args) {
    Board hi = new Board();
    System.out.println(hi);
  }
}
