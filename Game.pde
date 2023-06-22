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
  
  public void button(){
    if(gameMode==0){
      //back
      fill(255);
      strokeWeight(1);
      rect(680,500,90,45);
      fill(0);
      text("back",700, 530);
      
      //reset
      fill(255);
      rect(680,430,90,45);
      fill(0);
      text("reset",700,460);
    }
    //if(gameMode==1){
    //  //unless...
    //  fill(255);
    //  rect(width-106,height-47,80,30);
    //  fill(0);
    //  textSize(20);
    //  text("Unless...",width-100,height-25);
      
    //}
  }
  
  public void on(boolean bool){
    bool=true;
  }
  
  public void off(boolean bool){
    bool=false;
  }
  

}
