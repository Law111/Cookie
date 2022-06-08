class blockZ extends block{
  void setup(int r, int c){
    colorId=9;
    rInit=r;
    cInit=c;
    bArray = new blockPiece[4];
    bArray[0] = new blockPiece();
    bArray[0].setup(r+1,c+1,colorId);
    bArray[1] = new blockPiece();
    bArray[1].setup(r+1,c,colorId);
    bArray[2] = new blockPiece();
    bArray[2].setup(r,c,colorId);
    bArray[3] = new blockPiece();
    bArray[3].setup(r,c-1,colorId);
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

   if(cases==1){ // Z rotated 90 cc
     if(bArray[0].canMove(-2,0) && bArray[1].canMove(-1,1) && bArray[2].canMove(0,0) && bArray[3].canMove(1,1)){
       bArray[0].setup(-2+r0,0+c0,colorId);
       bArray[1].setup(-1+r1,1+c1,colorId);
       bArray[2].setup(0+r2,0+c2,colorId);
       bArray[3].setup(1+r3,1+c3,colorId);
       cases++;
     }
   } else if(cases==2){ // Z rotated 180 cc
     if(bArray[0].canMove(0,-2) && bArray[1].canMove(-1,-1) && bArray[2].canMove(0,0) && bArray[3].canMove(-1,1)){
        bArray[0].setup(0+r0,-2+c0,colorId);
        bArray[1].setup(-1+r1,-1+c1,colorId);
        bArray[2].setup(0+r2,0+c2,colorId);
        bArray[3].setup(-1+r3,1+c3,colorId);
        cases++; 
     }
   } else if(cases==3){ // Z rotated 270 cc
     if(bArray[0].canMove(2,0) && bArray[1].canMove(1,-1) && bArray[2].canMove(0,0) && bArray[3].canMove(-1,-1)){
        bArray[0].setup(2+r0,0+c0,colorId);
        bArray[1].setup(1+r1,-1+c1,colorId);
        bArray[2].setup(0+r2,0+c2,colorId);
        bArray[3].setup(-1+r3,-1+c3,colorId);
        cases++;
     }
   } else if(cases==4){ // Z rotated 360 cc
     if(bArray[0].canMove(0,2) && bArray[1].canMove(1,1) && bArray[2].canMove(0,0) && bArray[3].canMove(1,-1)){
        bArray[0].setup(0+r0,2+c0,colorId);
        bArray[1].setup(1+r1,1+c1,colorId);
        bArray[2].setup(0+r2,0+c2,colorId);
        bArray[3].setup(1+r3,-1+c3,colorId);
        cases=1;
     }
   }
 }
}
