class CardMatch extends Game{
  public Card[][] squareGrid;
  public final int gameMode=0;
  private int difficulty;
  private int squareSizeX;
  private int squareSizeY;
  private boolean inUse=false;
  public PImage value;
  public CardImage carIm = new CardImage();
  
  
  public CardMatch(){
    squareGrid=new Card[12][12];
    difficulty=3; //0-3 inclusive
  }
  
  public void activate(){
    inUse=true;
  }
  
  public void screenBase(){
    fill(255);
    strokeWeight(2);
    rect(width-150,0,150,height);
    int cWidth=width-150;
    int numSquares=0;
    
    //size per difficulty
    if(difficulty==0) numSquares=4; 
    if(difficulty==1) numSquares=6;
    if(difficulty==2) numSquares=10;
    if(difficulty==3) numSquares=12;
    
    squareSizeX=cWidth/numSquares;
    squareSizeY=height/numSquares;
    
    //grid
    strokeWeight(1);
    fill(255,255,255);
    for(int row=0; row<numSquares;row++){ 
     for(int col=0; col<numSquares;col++){ 
      rect(col*squareSizeX, row*squareSizeY, squareSizeX,squareSizeY);
      squareGrid[row][col]=new Card(col*squareSizeX, row*squareSizeY);
      squareGrid[row][col].setMatch();
     }
    }
  }
  
  //which square to change
  public PImage findCard(float mX, float mY){
    mX= (int) mX; mY= (int) mY;
    for(int row=0; row<squareGrid.length;row++){
      for(int col=0; col<squareGrid[row].length;col++){
        if(mX>=squareGrid[row][col].xCoord 
          && mX<(squareGrid[row][col].xCoord+squareSizeX) 
          && mY>=squareGrid[row][col].yCoord 
          && mY<(squareGrid[row][col].yCoord+squareSizeY)){
            value = squareGrid[row][col].match;
            return value;
          }
      }   
    }
  }
  
  public void showCard(){
    //fill(0);
    image(value,width-100, 100,squareSizeX,squareSizeY);
  }
  
  public void reset(){
    //set values to original
  }

}
