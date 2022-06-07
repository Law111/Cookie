class blockS extends block{
  void setup(int r, int c){
    rInit=r;
    cInit=c;
    bArray = new blockPiece[4];
    fill(0, 255, 0);
    bArray[0] = new blockPiece();
    bArray[0].setup(r,c+1,identity);
    bArray[1] = new blockPiece();
    bArray[1].setup(r,c,identity);
    bArray[2] = new blockPiece();
    bArray[2].setup(r+1,c,identity);
    bArray[3] = new blockPiece();
    bArray[3].setup(r+1,c-1,identity);
    identity = 's';
  }
  
    void rotateLeft(){
   int row = 0 , col = 0;

   bArray[0].clear();
   int r0 = bArray[0].getR();
   int c0 = bArray[0].getC();
   bArray[1].clear();
   int r1 = bArray[1].getR();
   int c1 = bArray[1].getC();
   bArray[2].clear();
   int r2 = bArray[2].getR();
   int c2 = bArray[2].getC();
   bArray[3].clear();
   int r3 = bArray[3].getR();
   int c3 = bArray[3].getC();
   //bArray[0] = new blockPiece();
   //bArray[1] = new blockPiece();
   //bArray[2] = new blockPiece();
   //bArray[3] = new blockPiece();

   if(cases==1){ // S rotated 90 cc
     if(bArray[0].canMove(-1,-1) && bArray[1].canMove(0,0) && bArray[2].canMove(-1,1) && bArray[3].canMove(0,2)){
       bArray[0].setup(-1+r0,-1+c0,identity);
       bArray[1].setup(0+r1,0+c1,identity);
       bArray[2].setup(-1+r2,1+c2,identity);
       bArray[3].setup(0+r3,2+c3,identity);
       cases++;
     }
   } else if(cases==2){ // S rotated 180 cc
     if(bArray[0].canMove(1,-1) && bArray[1].canMove(0,0) && bArray[2].canMove(-1,-1) && bArray[3].canMove(-2,0)){
        bArray[0].setup(1+r0,-1+c0,identity);
        bArray[1].setup(0+r1,0+c1,identity);
        bArray[2].setup(-1+r2,-1+c2,identity);
        bArray[3].setup(-2+r3,0+c3,identity);
        cases++;
     }
   } else if(cases==3){ // S rotated 270 cc
     if(bArray[0].canMove(1,1) && bArray[1].canMove(0,0) && bArray[2].canMove(1,-1) && bArray[3].canMove(0,-2)){
        bArray[0].setup(1+r0,1+c0,identity);
        bArray[1].setup(0+r1,0+c1,identity);
        bArray[2].setup(1+r2,-1+c2,identity);
        bArray[3].setup(0+r3,-2+c3,identity);
        cases++;
     }
   } else if(cases==4){ // S rotated 360 cc
     if(bArray[0].canMove(-1,1) && bArray[1].canMove(0,0) && bArray[2].canMove(1,1) && bArray[3].canMove(2,0)){
        bArray[0].setup(-1+r0,1+c0,identity);
        bArray[1].setup(0+r1,0+c1,identity);
        bArray[2].setup(1+r2,1+c2,identity);
        bArray[3].setup(2+r3,0+c3,identity);
        cases=1;
     }
   }
 }
 
}
