class block{
 int rInit;
 int cInit;
 blockPiece[] bArray;
 char identity;
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
     blockPiece temp;
     for (int i = 0; i < bArray.length -1; i++){
       for(int j = 0; j < bArray.length-1-i; j++){
         if(bArray[j].getC()<bArray[j+1].getC()){
           temp=bArray[j];
           bArray[j]=bArray[j+1];
           bArray[j+1]=temp;
         }
       }
     }
     bArray[0].moveRight();
     bArray[1].moveRight();
     bArray[2].moveRight();
     bArray[3].moveRight();
   }
 }
 
 void moveLeft(){
   if(bArray[0].canMoveLeft() && bArray[1].canMoveLeft() && bArray[2].canMoveLeft() && bArray[3].canMoveLeft()){
     // commence the bubble sort because its simple (only a couple comparisons to modify)
     blockPiece temp;
     for (int i = 0; i < bArray.length -1; i++){
       for(int j = 0; j < bArray.length-1-i; j++){
         if(bArray[j].getC()>bArray[j+1].getC()){
           temp=bArray[j];
           bArray[j]=bArray[j+1];
           bArray[j+1]=temp;
         }
       }
     }
     bArray[0].moveLeft();
     bArray[1].moveLeft();
     bArray[2].moveLeft();
     bArray[3].moveLeft();
   }
 }
   
 void moveDown(){
   if(bArray[0].canMoveDown() && bArray[1].canMoveDown() && bArray[2].canMoveDown() && bArray[3].canMoveDown()){
     // commence the bubble sort because its simple (only a couple comparisons to modify)
     blockPiece temp;
     for (int i = 0; i < bArray.length -1; i++){
       for(int j = 0; j < bArray.length-1-i; j++){
         if(bArray[j].getR()<bArray[j+1].getR()){
           temp=bArray[j];
           bArray[j]=bArray[j+1];
           bArray[j+1]=temp;
         }
       }
     }
     bArray[0].moveDown();
     bArray[1].moveDown();
     bArray[2].moveDown();
     bArray[3].moveDown();
   } else {
     for (int i = 0; i < bArray.length; i++){
       n.board[bArray[i].getR()][bArray[i].getC()] = 1;
     }
     for (int i = 0; i < bArray.length; i++){
       if(n.rowFull(bArray[0].getR())){
         n.removeRow(bArray[0].getR());
       }
     }
     ascend();
   }
 }
 
 void ascend(){
   b = new blockJ();
   b.setup(rInit,cInit);
 }
}
