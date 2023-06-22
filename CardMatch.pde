class CardMatch extends Game{ 
  private Card[][] squareGrid;
  //public int gameMode;
  public int mode; //implements different stages of turning cards over
  private int difficulty;
  private int squareSizeX;
  private int squareSizeY;
  private boolean inUse=false;
  //public boolean timerStatus=false;
  private int numSquares;
  public String match0=""; public String match1="";
  public int row=0; public int col=0;
  int x0,y0,x1,y1;
  
  public CardMatch(){
    super();
    //gameMode=0;
    squareGrid=new Card[12][12];
    difficulty=3; //0-3 inclusive
  }
  
  private void activate(boolean bool){
    bool=true;
  }
  
  private void deactivate(boolean bool){
    bool=false;
  }
  
  
  public void screenBase(){
    activate(inUse);
    this.mode=0;
    background(0);
    fill(255);
    strokeWeight(2);
    rect(width-150,0,150,height);
    myGame.button();
    int cWidth=width-150;
    this.numSquares=0;
    
    //size per difficulty
    if(difficulty==0) numSquares=4; 
    else{if(difficulty==1) numSquares=6;
      else{if(difficulty==2) numSquares=10;
        else{if(difficulty==3) numSquares=12;}
      }
    }
    
    this.squareSizeX=cWidth/numSquares;
    this.squareSizeY=height/numSquares;
    
    //grid
    strokeWeight(1);
    fill(255,255,255);
    for(int r=0; r<numSquares;r++){ 
     for(int c=0; c<numSquares;c++){ 
      fill(255,255,255);
      rect(c*squareSizeX, r*squareSizeY, squareSizeX,squareSizeY);
      squareGrid[r][c]=new Card(c*squareSizeX, r*squareSizeY);
      //fill(0);
      //text(squareGrid[r][c].getMatch(),c*squareSizeX+(squareSizeX/2),
      //    r*squareSizeY+(squareSizeY/2));
     }
    }
    fill(0);
    textSize(20);
    text("*unfortunately",660,30,150,60);
    text("  could not",660,50,150,60);
    text("  implement in",660,70,150,60);
    text("  the end",660,90,150,60);
    
  }
  
  public void modes(){
    if(mode==1){
      fill(0);
      text(this.match0,col*squareSizeX+(squareSizeX/2),row*squareSizeY+(squareSizeY/2));
      this.x0=col*squareSizeX; this.y0=row*squareSizeY;
    }
    if(mode==2){
      fill(0);
      //text(match0,col*squareSizeX+(squareSizeX/2),row*squareSizeY+(squareSizeY/2));
      text(this.match1,col*squareSizeX+(squareSizeX/2),row*squareSizeY+(squareSizeY/2));
      this.x1=col*squareSizeX; this.y1=row*squareSizeY;
    }
    if(mode==3){
      fill(255);
      noStroke();
      rect(x0,y0,squareSizeX-10,squareSizeY-10);
      rect(x1,y1,squareSizeX-10,squareSizeY-10);
    }
  }
  
  public String which(float mX, float mY){
    int n=0; //row=0; col=0;
    while(n<numSquares){
      if(mX>=n*squareSizeX && mX<=n*squareSizeX+squareSizeX){
        this.col=n;
      }
      if(mY>=n*squareSizeY && mY<=n*squareSizeY+squareSizeY){
        this.row=n;
      }
      else{
        n++;
      }
    }
    String value=squareGrid[row][col].getMatch();
    return value;
  }
  
  //private void timer(){
  //    int ms=millis();
  //    int s=ms/1000;
  //    int m=s/60;
  //    String temp=String.valueOf(ms/10);
  //    temp=temp.substring(temp.length()-2);
  //  if(timerStatus){
  //    fill(255);
  //    //noStroke();
  //    rect(660,30,125,60);
  //    fill(0);
  //    textSize(27);
  //    text(m+": "+s+": "+temp,680,70);
  //  }
  //}
  
  
  public void reset(){
    //set values to original
    //-->reset timer
    //-->reset matches
    //-->re-randomize cards
  }

}
