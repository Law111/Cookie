public class Board {
  private int[][] board;
  int r=20;
  int c=10;
  public Board(){
    board = new int[r+6][c+12];
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

  public String toString(){
    String retStr = "";
    int i,j;
    for( i=0; i < r+6; i++ ) {
      for( j=0; j < c+12; j++ )
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
