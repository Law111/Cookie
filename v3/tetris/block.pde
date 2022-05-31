class block{
  int r;
  int c;
  int rInit;
  int cInit;
  String blockLetter = "";
  void setup(int r1, int c1){
    rInit=r1;
    cInit=c1;
    r=r1;
    c=c1;
    if (Math.random()*1 < 1) {
      blockI I;
      I = new blockI();
      I.setup(r,c);
    }
    else if (Math.random()*7 < 2) {
      blockJ J;
      J = new blockJ();
      J.setup(r,c);
    }
    else if (Math.random()*7 < 3) {
      blockL L;
      L = new blockL();
      L.setup(r,c);
    }
    else if (Math.random()*7 < 4) {
      blockO O;
      O = new blockO();
      O.setup(r,c);
    }
    else if (Math.random()*7 < 5) {
      blockS S;
      S = new blockS();
      S.setup(r,c);
    }
    else if (Math.random()*7 < 6) {
      blockT T;
      T = new blockT();
      T.setup(r,c);
    }
    else {
      blockZ Z;
      Z = new blockZ();
      Z.setup(r,c);
    }
    //n.board[r][c]=1;
  }
  
  void moveRight(){
    if(n.board[r][c+1]==0){
      n.board[r][c] = 0;
      c++;
      n.board[r][c] = 1;
    }
  }
  
  void moveLeft(){
    if(n.board[r][c-1]==0){
      n.board[r][c] = 0;
      c--;
      n.board[r][c] = 1;
    }
  }
  
  void moveDown(){
    if(n.board[r+1][c]==0){
      n.board[r][c] = 0;
      r++;
      n.board[r][c] = 1;
    } else {
      if(n.rowFull(r)){
        n.removeRow(r);
      }
      r=rInit;
      c=cInit;
    }
  }
}
