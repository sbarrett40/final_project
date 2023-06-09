class Card extends CardMatch{
  public int xCoord;
  public int yCoord;
  public PImage match;
  //public int difficulty;
  //private boolean inUse=false;
  
  public Card(int xCoord, int yCoord){
    this.xCoord=xCoord;
    this.yCoord=yCoord;
  }
  
  public void setMatch(){
    this.match=carIm.randomCard();
  }
  
  
}
