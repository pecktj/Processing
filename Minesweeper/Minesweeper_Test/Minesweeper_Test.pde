Block[][] b=new Block[5][5];
int values[][]=new int[5][5];
int press[][]=new int[5][5];
PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
PImage img7;
PImage img8;
PImage img9;
PImage img10;
PImage img11;
PImage img12;
PImage img13;
int finish=0;

void setup(){
  frameRate(60);
  size(125,125);
  img1=loadImage("One.png");
  img2=loadImage("Two.png");
  img3=loadImage("Three.png");
  img4=loadImage("Four.png");
  img5=loadImage("Five.png");
  img6=loadImage("Six.png");
  img7=loadImage("Seven.png");
  img8=loadImage("Eight.png");
  img9=loadImage("Flag.png");
  img10=loadImage("Question.png");
  img11=loadImage("Bomb.png");
  img12=loadImage("Bombx.png");
  img13=loadImage("Gray.png");
  for(int i=0; i<5;i++){
    for(int m=0; m<5; m++){
      b[i][m]=new Block();
      b[i][m].create(((i)*25),((m)*25));
    }
  }
  bombs();
  for(int i=0; i<5;i++){
    for(int m=0; m<5; m++){
   print(values[i][m]);
    }
    println();
  }
  println();
  place_numbers();
  for(int i=0; i<5;i++){
    for(int m=0; m<5; m++){
   print(values[i][m]);
    }
    println();
  }
}
  
  
void draw(){
  int sum=0;
  background(0,0,0);
 
  for(int i=0; i<5;i++){
    for(int m=0; m<5; m++){
     if(press[i][m]==1){
        b[i][m].show();}
    }
       // println();
  }
 
  for(int i=0; i<5;i++){
    for(int m=0; m<5; m++){
      if (values[i][m]==-1){
        outputb(((i)*25+1),((m)*25+1));
      }
    }
  }
 for(int i=0; i<5;i++){
    for(int m=0; m<5; m++){
     outputpic(((i)*25),((m)*25), values[i][m]);
  }
}
  for(int i=0; i<5;i++){
    for(int m=0; m<5; m++){
    if(press[i][m]==0){
        b[i][m].show();}
    }
  }
  if (finish==0){
 for(int i=0; i<5;i++){
    for(int m=0; m<5; m++){
      if(press[i][m]==2){
      image(img9,((i)*25)+1,((m)*25)+1,width/5.1,height/5.1);}
      if(press[i][m]==3){
      image(img10,((i)*25)+1,((m)*25)+1,width/5.1,height/5.1);}
    }
 }
  }
  else{
    for(int i=0; i<5;i++){
    for(int m=0; m<5; m++){
    if(press[i][m]==2){
      image(img12,((i)*25)+1,((m)*25)+1,width/5.1,height/5.1);}
            if(press[i][m]==3){
      image(img13,((i)*25)+1,((m)*25)+1,width/5.1,height/5.1);}
    }}
  }
 if (finish==0){
 sum=0;
 for(int i=0; i<5;i++){
    for(int m=0; m<5; m++){
      if (press[i][m]==1){
          sum++;}
    }}
    if (sum==22){
      println("You win");
    finish=1;}}
    
    
      if (finish==1){
      for(int i=0; i<5;i++){
    for(int m=0; m<5; m++){
      if (values[i][m]==-1){
        outputb(((i)*25+1),((m)*25+1));
      }
    }
  }
      }
}


  void bombs()
  {
    //num of bombs
    for (int i=0; i<3; i++){
      int one=(int)(Math.random()*4+1);
      int two=(int)(Math.random()*4+1);
      if(values[one][two]==-1){ 
        i--;
      }else{
        values[one][two]=-1;
      }
    }
  }
  
  void outputb(int x, int y){
    
    image(img11,y,x,width/5.1,height/5.1);
   /* fill(0,0,0);
    stroke(0,0,0);
    ellipse(y,x,10,10);
    stroke(0,0,0);
    fill(0,0,0);
    rect(y-1,x-7,2,2);
    stroke(0,0,0);
    fill(0,0,0);
    rect(y-1,x-9,2,2);
    stroke(200,0,0);
    fill(200,0,0);
    rect(y-2,x-10,2,2);*/
  }
  void outputpic(int x, int y, int num){
      if (num==1){
        image(img1,y,x,width/6,height/6);}
       if (num==2){
        image(img2,y,x,width/6,height/6);}
        if (num==3){
        image(img3,y,x,width/6,height/6);}
        if (num==4){
        image(img4,y,x,width/6,height/6);}
        if (num==5){
        image(img5,y,x,width/6,height/6);}
        if (num==6){
        image(img6,y,x,width/6,height/6);}
        if (num==7){
        image(img7,y,x,width/6,height/6);}
        if (num==8){
        image(img8,y,x,width/6,height/6);}
  }
  
  
  void place_numbers()
  {
    int sum;
     for(int i=0; i<5;i++){
    for(int m=0; m<5; m++){
     sum=0;
      if (values[i][m]==-1){
      }
        else{
        //top left
        if(i==0){}
        else{
        if (m==0){}
        else{
        if (values[i-1][m-1]==-1){
          sum=sum+1;}}}
          
        //middle left
        if (m==0){}
        else{
        if (values[i][m-1]==-1){
          sum=sum+1;}}
          
        //bottom left
        if(i==4){}
        else{
        if (m==0){}
        else{
        if (values[i+1][m-1]==-1){
          sum=sum+1;}}}
          
        //bottom middle
        if(i==4){}
        else{
        if (values[i+1][m]==-1){
          sum=sum+1;}}
          
        //bottom right
        if(m==4){}
        else{
        if(i==4){}
        else{
        if (values[i+1][m+1]==-1){
          sum=sum+1;}}}
          
        //right middle
        if(m==4){}
        else{
        if (values[i][m+1]==-1){
          sum=sum+1;}}
          
        //top right
        if(i==0){}
        else{
        if(m==4){}
        else{
        if (values[i-1][m+1]==-1){
          sum=sum+1;}}}
          
        //top middle
        if(i==0){}
        else{
        if (values[i-1][m]==-1){
          sum=sum+1;}}
      }
       if (values[i][m]==-1){
      }else{
          values[i][m]=sum;}
    
    }
   }   
  }
  
  void connect(){
    for(int k=0;k<5;k++){
      for(int i=0; i<5;i++){
    for(int m=0; m<5; m++){
       if((press[i][m]==1)&&(values[m][i]==0)){
       // println(values[i][m]);
        //top left
         if(i==0){}
        else{
        if (m==0){}
        else{
         if (press[i-1][m-1]==2){}
         else{}
        if (press[i-1][m-1]==0){
          press[i-1][m-1]=1;
          b[i-1][m-1].open();}}}
          
        //middle left
        if (m==0){}
        else{
          if (press[i][m-1]==2){}
         else{}
        if (press[i][m-1]==0){
          press[i][m-1]=1;
         b[i][m-1].open();}}
          
        //bottom left
        if(i==4){}
        else{
        if (m==0){}
        else{
          if (press[i+1][m-1]==2){}
         else{}
        if (press[i+1][m-1]==0){
          press[i+1][m-1]=1;
         b[i+1][m-1].open();}}}
          
        //bottom middle
        if(i==4){}
        else{
          if (press[i+1][m]==2){}
         else{}
        if (press[i+1][m]==0){
         press[i+1][m]=1; 
        b[i+1][m].open();}}
          
        //bottom right
        if(m==4){}
        else{
        if(i==4){}
        else{
          if (press[i+1][m+1]==2){}
         else{}
        if (press[i+1][m+1]==0){
         press[i+1][m+1]=1;
        b[i+1][m+1].open();}}}
          
        //right middle
        if(m==4){}
        else{
          if (press[i][m+1]==2){}
         else{}
        if (press[i][m+1]==0){
         press[i][m+1]=1;
        b[i][m+1].open();}}
          
        //top right
        if(i==0){}
        else{
        if(m==4){}
        else{
          if (press[i-1][m+1]==2){}
         else{}
        if (press[i-1][m+1]==0){
          press[i-1][m+1]=1;
         b[i-1][m+1].open();}}}
          
        //top middle
        if(i==0){}
        else{
          if (press[i-1][m]==2){}
         else{}
        if (press[i-1][m]==0){
          press[i-1][m]=1;
         b[i-1][m].open();}}
         
       }
  
    }}}
  }
  
  void mouseClicked(){
    if (finish==1){}
    else{
     for(int i=0; i<5;i++){
    for(int m=0; m<5; m++){
      

     press[i][m]=b[i][m].press(press[i][m]);
     if ((mouseButton == LEFT)) {
     if(press[i][m]==1){
     connect();
     if(values[m][i]==-1){
           println("You Lose"); 
       finish=1;  }}}

     
           }}
             
    } 
  /*   println();
       for(int i=0; i<5;i++){
    for(int m=0; m<5; m++){
      
      
     print(press[m][i]);
     
      
    }println();}*/
    
  }
  
