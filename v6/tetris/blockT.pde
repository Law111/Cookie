class blockT extends block{
  void setup(int r, int c){
    rInit=r;
    cInit=c;
    bArray = new blockPiece[4];
    bArray[0] = new blockPiece();
    bArray[0].setup(r,c);
    bArray[1] = new blockPiece();
    bArray[1].setup(r,c-1);
    bArray[2] = new blockPiece();
    bArray[2].setup(r,c+1);
    bArray[3] = new blockPiece();
    bArray[3].setup(r+1,c);
  }
  void ascend(){
   b = new blockZ();
   b.setup(rInit,cInit);
 }
}
