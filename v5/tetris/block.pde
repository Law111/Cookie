class block{
 int r;
 int c;
 int rInit;
 int cInit;
 blockPiece b1;
 blockPiece b2;
 blockPiece b3;
 blockPiece b4;
 void setup(int r1, int c1){
   r=r1;
   c=c1;
   b1 = new blockPiece();
   b1.setup(r,c);
   b2 = new blockPiece();
   b2.setup(r+1,c);
   b3 = new blockPiece();
   b3.setup(r+2,c);
   b4 = new blockPiece();
   b4.setup(r+3,c);
 }
 void moveRight(){
   if(b1.canMoveRight() && b2.canMoveRight() && b2.canMoveRight() && b4.canMoveRight()){
     b1.moveRight();
     b2.moveRight();
     b3.moveRight();
     b4.moveRight();
   }
 }
 
 void moveLeft(){
   if(b1.canMoveLeft() && b2.canMoveLeft() && b2.canMoveLeft() && b4.canMoveLeft()){
     b1.moveLeft();
     b2.moveLeft();
     b3.moveLeft();
     b4.moveLeft();
   }
 }
   
 void moveDown(){
   if(b1.canMoveDown() && b2.canMoveDown() && b3.canMoveDown() && b4.canMoveDown()){
     b4.moveDown();
     b3.moveDown();
     b2.moveDown();
     b1.moveDown();
     
   }
 }
}
