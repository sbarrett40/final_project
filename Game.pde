class Game{
  int gameMode;

  public Game(){
    gameMode=-1;
  }

  public void homeScreen(){
    //text
      fill(0);
      textSize(40);
      text("Welcome to the Game!",width/4,height/4);
      textSize(32);
      text("Please select your game mode",width/4.5,height/2);
  
      //game mode 0 button
      textSize(24);
      fill(255,255,255);
      rect(width/6,3.5*height/5, 150,75);
      fill(0);
      text("Card Match",.76*width/4,3.1*height/4);
  
      //game mode 1 button
      fill(255,255,255);
      rect(4*width/6,3.5*height/5, 150,75);
      fill(0,0,0);
      text("Follow the",2.77*width/4,3.03*height/4);
      text("sequence",2.8*width/4,3.18*height/4);
    
  }
  

}
