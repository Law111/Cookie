class blockO extends block{
  void setup(int r, int c){
    rInit=r;
    cInit=c;
    bArray = new blockPiece[4];
    fill(255, 255, 0);
    bArray[0] = new blockPiece();
    bArray[0].setup(r,c,identity);
    bArray[1] = new blockPiece();
    bArray[1].setup(r,c+1,identity);
    bArray[2] = new blockPiece();
    bArray[2].setup(r+1,c,identity);
    bArray[3] = new blockPiece();
    bArray[3].setup(r+1,c+1,identity);
    identity = 'o';
  }
  void rotateLeft(){
    return;
  }
}
