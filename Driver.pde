//class Driver {
  Game myGame=new Game();
  CardMatch myCard=new CardMatch();
  //String match0=""; String match1="";
  SeqOfSquares mySeq=new SeqOfSquares();
  //int clickedTot=0;
  int clicked=0;
  
  
  
  void setup(){
    size(800,600);
    background(255);
  }
  
  void draw(){
    displayChoice();
    //myCard.timer();
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
        //myCard.timer();
        myCard.modes();
        
        if(clicked>0){
          //myCard.modes();
        }
      }
          
      //SOS
      else{ 
        fill(255);
        rect(0,0,width,height);
        mySeq.screenBase();
      }
     }
     
  }
  
  void mouseClicked(){
    
    //CardMatch
    if(myCard.inUse){
      
      clicked++;
      if(clicked==1){
        myCard.match0=myCard.which(mouseX,mouseY);
        myCard.mode=1;
      }
      if(clicked==2){
        myCard.match1=myCard.which(mouseX,mouseY);
        myCard.mode=2;
      }
      if(clicked==3){
        myCard.mode=3;
        clicked=0;
      }
      
      
       
      if(mouseX>680 && mouseX<770){
        if(mouseY>430 && mouseY<475){
          
        }
        if(mouseY>500 && mouseY<545){ //back button not working
          myGame.gameMode=-1;
          myCard.deactivate(myCard.inUse);
          fill(255); rect(0,0,width,height);
        }
      }
       
       
       
    }
    
    //SOS
    if(mySeq.inUse){
      clicked++;
      if (mouseX>width-106 && mouseX<width-26){
        if(mouseY>height-47 && mouseY<height-17){
          //stub
        }
      }
    }
    
    //CardMatch button
    if(myGame.gameMode==-1){
      if(mouseX>width/6 && mouseX<width/6+150 &&
         mouseY>3.5*height/5 && mouseY<3.5*height/5+75){
         myGame.gameMode=0;
         myCard.screenBase();
         }
    
    //SOS button
      if(mouseX>4*width/6 && mouseX<(4*width/6)+150 &&
         mouseY>3.5*height/5 && mouseY<(3.5*height/5)+75){
         myGame.gameMode=1;
         }
      }
    
    
  }
  
//}
  
