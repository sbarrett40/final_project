class Card{
  private int xCoord;
  private int yCoord;
  private String match;
  
  public Card(int xCoor, int yCoor){
    xCoord=xCoor;
    yCoord=yCoor;
    setMatch();
  }
  
  public boolean checkBounds(float mX, float mY, int squareSizeX, int squareSizeY){
    if(mX>=this.xCoord && (mX<=this.xCoord+squareSizeX)){
      if(mY>=this.yCoord && mY<=(this.yCoord+squareSizeY)){
        return true;
      }
      else{
        return false;
      }
    } else {
      return false;
    }
  }
  
  private void setMatch(){
    String m = String.valueOf((int)(Math.random()*101));
    match=m;
  }
  
  //public int getX(){
  //  return this.xCoord;
  //}
  
  //public int getY(){
  //  return this.yCoord;
  //}
  
  public String getMatch(){
    return match;
  }
  
  
}
