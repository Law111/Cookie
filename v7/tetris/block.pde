class block{
 int rInit;
 int cInit;
 blockPiece[] bArray;
 char identity;
 int cases = 1;
 
 void setup(int r, int c){
   rInit=r;
   cInit=c;
   bArray = new blockPiece[4];
   bArray[0] = new blockPiece();
   bArray[0].setup(r,c);
   bArray[1] = new blockPiece();
   bArray[1].setup(r+1,c);
   bArray[2] = new blockPiece();
   bArray[2].setup(r+2,c);
   bArray[3] = new blockPiece();
   bArray[3].setup(r+3,c);
   identity = 'i';
 }
 void moveRight(){ 
   if(bArray[0].canMoveRight() && bArray[1].canMoveRight() && bArray[2].canMoveRight() && bArray[3].canMoveRight()){
     // commence the bubble sort because its simple (only a couple comparisons to modify)
     // Essentially we need to make sure the rightmost blockPiece moves first so we sort by column, the first element has the lowest column number
     //blockPiece temp;
     //for (int i = 0; i < bArray.length -1; i++){
     //  for(int j = 0; j < bArray.length-1-i; j++){
     //    if(bArray[j].getC()<bArray[j+1].getC()){
     //      temp=bArray[j];
     //      bArray[j]=bArray[j+1];
     //      bArray[j+1]=temp;
     //    }
     //  }
     //}
     //bArray[0].moveRight();
     //bArray[1].moveRight();
     //bArray[2].moveRight();
     //bArray[3].moveRight();
     bArray[0].clear();
     bArray[1].clear();
     bArray[2].clear();
     bArray[3].clear();
     bArray[0].move(0,1);
     bArray[1].move(0,1);
     bArray[2].move(0,1);
     bArray[3].move(0,1);
   }
 }
 
 void moveLeft(){
   if(bArray[0].canMoveLeft() && bArray[1].canMoveLeft() && bArray[2].canMoveLeft() && bArray[3].canMoveLeft()){
     // commence the bubble sort because its simple (only a couple comparisons to modify)
     //blockPiece temp;
     //for (int i = 0; i < bArray.length -1; i++){
     //  for(int j = 0; j < bArray.length-1-i; j++){
     //    if(bArray[j].getC()>bArray[j+1].getC()){
     //      temp=bArray[j];
     //      bArray[j]=bArray[j+1];
     //      bArray[j+1]=temp;
       //  }
       //}
     //}
     bArray[0].clear();
     bArray[1].clear();
     bArray[2].clear();
     bArray[3].clear();
     //bArray[0].moveLeft();
     //bArray[1].moveLeft();
     //bArray[2].moveLeft();
     //bArray[3].moveLeft();
     bArray[0].move(0,-1);
     bArray[1].move(0,-1);
     bArray[2].move(0,-1);
     bArray[3].move(0,-1);
   }
 }
   
 void moveDown(){
   if(bArray[0].canMoveDown() && bArray[1].canMoveDown() && bArray[2].canMoveDown() && bArray[3].canMoveDown()){
     // commence the bubble sort because its simple (only a couple comparisons to modify)
     //blockPiece temp;
     //for (int i = 0; i < bArray.length -1; i++){
     //  for(int j = 0; j < bArray.length-1-i; j++){
     //    if(bArray[j].getR()<bArray[j+1].getR()){
     //      temp=bArray[j];
     //      bArray[j]=bArray[j+1];
     //      bArray[j+1]=temp;
     //    }
     //  }
     //}
     //bArray[0].moveDown();
     //bArray[1].moveDown();
     //bArray[2].moveDown();
     //bArray[3].moveDown();
     bArray[0].clear();
     bArray[1].clear();
     bArray[2].clear();
     bArray[3].clear();
     bArray[0].move(1,0);
     bArray[1].move(1,0);
     bArray[2].move(1,0);
     bArray[3].move(1,0);
   } else {
     for (int i = 0; i < bArray.length; i++){
       n.board[bArray[i].getR()][bArray[i].getC()] = 1;
     }
     for (int i = bArray.length-1; i >=0; i--){
       if(n.rowFull(bArray[i].getR())){
         n.removeRow(bArray[i].getR());
       }
     }
     ascend();
   }
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

   if(cases==1){ // left vertical to lower horizontal
     if(bArray[0].canMove(2,-1) && bArray[1].canMove(1,0) && bArray[2].canMove(0,1) && bArray[3].canMove(-1,2)){
       bArray[0].setup(2+r0,-1+c0);
       bArray[1].setup(1+r1,0+c1);
       bArray[2].setup(0+r2,1+c2);
       bArray[3].setup(-1+r3,2+c3);
       cases++;
     }
   } else if(cases==2){ // lower horizontal to right vertical
     if(bArray[0].canMove(1,2) && bArray[1].canMove(0,1) && bArray[2].canMove(-1,0) && bArray[3].canMove(-2,-1)){
        bArray[0].setup(1+r0,2+c0);
        bArray[1].setup(0+r1,1+c1);
        bArray[2].setup(-1+r2,0+c2);
        bArray[3].setup(-2+r3,-1+c3);
        cases++;
     }
   } else if(cases==3){ // right vertical to upper horizontal
     if(bArray[0].canMove(-2,1) && bArray[1].canMove(-1,0) && bArray[2].canMove(0,-1) && bArray[3].canMove(1,-2)){
        bArray[0].setup(-2+r0,1+c0);
        bArray[1].setup(-1+r1,0+c1);
        bArray[2].setup(0+r2,-1+c2);
        bArray[3].setup(1+r3,-2+c3);
        cases++;
     }
   } else if(cases==4){ // upper horizontal to left vertical
     if(bArray[0].canMove(-1,-2) && bArray[1].canMove(0,-1) && bArray[2].canMove(1,0) && bArray[3].canMove(2,1)){
        bArray[0].setup(-1+r0,-2+c0);
        bArray[1].setup(0+r1,-1+c1);
        bArray[2].setup(1+r2,0+c2);
        bArray[3].setup(2+r3,1+c3);
        cases=1;
     }
   }
 }
 
 void ascend(){
   b = new blockJ();
   b.setup(rInit,cInit);
 }
}
