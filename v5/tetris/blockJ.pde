class blockJ extends block{
  void setup(int r, int c){
   b1 = new blockPiece();
   b1.setup(r,c);
   b2 = new blockPiece();
   b2.setup(r+1,c);
   b3 = new blockPiece();
   b3.setup(r+2,c);
   b4 = new blockPiece();
   b4.setup(r+2,c-1);
  }
}
