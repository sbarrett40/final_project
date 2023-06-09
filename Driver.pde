//class Driver {
  Game myGame=new Game();
  CardMatch myCard=new CardMatch();
  SeqOfSquares mySeq=new SeqOfSquares();
  CardImage picTest = new CardImage();
  int clicked=0;
  
  void testCardMatch(){
    myCard.screenBase();
    //myCard.showCard();
  }
  
  void testSOS(){
    //stub
  }
  
  void testCardImage(){
    picTest.test();
  }
  
  void setup(){
    size(800,600);
    background(255);
  }
  
  void draw(){
    testCardImage();
    //displayChoice();
    //testCardMatch();
  }
  
  void displayChoice(){
    //Game
    if(myGame.gameMode==-1){
      myGame.homeScreen();
    }
    
    
    //CardMatch
    else{
      if(myGame.gameMode==0){ 
        fill(0);
        testCardMatch();
        if(clicked<3){
          myCard.showCard();
        }
      }
      
      
      //SOS
      else{ //|| myGame.gameMode==1){
        fill(255);
        rect(0,0,width,height);
      }
     }
     
  }
  
  void mouseClicked(){
    
    //CardMatch
    if(myCard.inUse){
      clicked++;
      myCard.findCard(mouseX, mouseY);
       //myCard.showCard();
    }
    
    //SOS
    if(myGame.gameMode==1){
        
    }
    
    //CardMatch button
    if(myGame.gameMode==-1){
      if(mouseX>width/6 && mouseX<width/6+150 &&
         mouseY>3.5*height/5 && mouseY<3.5*height/5+75){
         myGame.gameMode=0;
         myCard.activate();
         }
    
    //SOS button
      if(mouseX>4*width/6 && mouseX<(4*width/6)+150 &&
         mouseY>3.5*height/5 && mouseY<(3.5*height/5)+75){
         myGame.gameMode=1;
         }
      }
    
    ////CardMatch
    //if(myGame.gameMode==0){
    //   //myCard.findCard(mouseX, mouseY);
    //}
    
    ////SOS
    //if(myGame.gameMode==1){
        
    //}
    
  }
  
//}
  
