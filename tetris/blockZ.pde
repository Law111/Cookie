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

   if(cases==1){ // Z rotated 90 cc 2>>1
     if(bArray[0].canMove(-2+row,0+col) && bArray[1].canMove(-1+row,1+col) && bArray[2].canMove(0+row,0+col) && bArray[3].canMove(1+row,1+col)){
       bArray[0].setup(-2+r0,0+c0+col,colorId);
       bArray[1].setup(-1+r1,1+c1+col,colorId);
       bArray[2].setup(0+r2,0+c2+col,colorId);
       bArray[3].setup(1+r3,1+c3+col,colorId);
       cases++;
       t1=0;
      } else {
        t1++;
     }
     if(t1==1){
         col=-1;
         rotateLeft();
     }
     if(t1==2){
         row=-1;
         rotateLeft();
     }
     if(t1==3){
         col=0;
         row=2;
         rotateLeft();
     }
     if(t1==4){
         col=-1;
         rotateLeft();
     }
     row=0;
     col=0;
   } else if(cases==2){ // Z rotated 180 cc 1>>0
     if(bArray[0].canMove(0+row,-2+col) && bArray[1].canMove(-1+row,-1+col) && bArray[2].canMove(0+row,0+col) && bArray[3].canMove(-1+row,1+col)){
        bArray[0].setup(0+r0+row,-2+c0+col,colorId);
        bArray[1].setup(-1+r1+row,-1+c1+col,colorId);
        bArray[2].setup(0+r2+row,0+c2+col,colorId);
        bArray[3].setup(-1+r3+row,1+c3+col,colorId);
        cases++; 
        t2=0;
      } else {
        t2++;
     }
     if(t2==1){
         col=1;
         rotateLeft();
     }
     if(t2==2){
         row=1;
         rotateLeft();
     }
     if(t2==3){
         col=0;
         row=-2;
         rotateLeft();
     }
     if(t2==4){
         col=1;
         rotateLeft();
     }
     row=0;
     col=0;
   } else if(cases==3){ // Z rotated 270 cc 0>>3
     if(bArray[0].canMove(2+row,0+col) && bArray[1].canMove(1+row,-1+col) && bArray[2].canMove(0+row,0+col) && bArray[3].canMove(-1+row,-1+col)){
        bArray[0].setup(2+r0+row,0+c0+col,colorId);
        bArray[1].setup(1+r1+row,-1+c1+col,colorId);
        bArray[2].setup(0+r2+row,0+c2+col,colorId);
        bArray[3].setup(-1+r3+row,-1+c3+col,colorId);
        cases++;
        t3=0;
      } else {
        t3++;
     }
     if(t3==1){
         col=1;
         rotateLeft();
     }
     if(t3==2){
         row=1;
         rotateLeft();
     }
     if(t3==3){
         col=0;
         row=-2;
         rotateLeft();
     }
     if(t3==4){
         col=1;
         rotateLeft();
     }
     row=0;
     col=0;
   } else if(cases==4){ // Z rotated 360 cc 3>>2
     if(bArray[0].canMove(0+row,2+col) && bArray[1].canMove(1+row,1+col) && bArray[2].canMove(0+row,0+col) && bArray[3].canMove(1+row,-1+col)){
        bArray[0].setup(0+r0+row,2+c0+col,colorId);
        bArray[1].setup(1+r1+row,1+c1+col,colorId);
        bArray[2].setup(0+r2+row,0+c2+col,colorId);
        bArray[3].setup(1+r3+row,-1+c3+col,colorId);
        cases=1;
        t4=0;
      } else {
        t4++;
     }
     if(t4==1){
         col=1;
         rotateLeft();
     }
     if(t4==2){
         row=-1;
         rotateLeft();
     }
     if(t4==3){
         col=0;
         row=2;
         rotateLeft();
     }
     if(t4==4){
         col=1;
         rotateLeft();
     }
     row=0;
     col=0;
   }
 }
}
