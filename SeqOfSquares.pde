class SeqOfSquares extends Game{
  //private int[][] squareGrid;
  //private int difficulty;
  public final int gameMode=1;
  private boolean inUse=false;
  //private Movie movie;
  //movie = new Movie(this, "rick.mov");
  
  public SeqOfSquares() {
    inUse=true;
    //movie = new Movie(this, "rick.mov");
  }
  
  private void screenBase(){
    myGame.button();
    fill(0);
    textSize(50);
    text("HA AHA HA! YOU FOOL!",1.1*width/6,height/4);
    text("You really thought I made",width/6,1.2*height/2.5);
    text("another game??", 1.45*width/5, 1.7*height/3);
    text("Oh, you poor delusional human...",width/8.5,1.7*height/2);
  }

}
