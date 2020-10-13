int map=10;
int amountb=10;
Block[][] b=new Block[map][map];
int values[][]=new int[map][map];
int press[][]=new int[map][map];
int kep=1;
int first;
int second;
int third;
int golbal;
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

  frameRate(60);
  size(500,500);
 // frameRate(60);
 // surface.setResizable(true);
 // surface.setLocation(125,125);

  for(int i=0; i<map;i++){
    for(int m=0; m<map; m++){
      b[i][m]=new Block();
      b[i][m].create(((i)*25),((m)*25));
    }
  }
  bombs();
  for(int i=0; i<map;i++){
    for(int m=0; m<map; m++){
   print(values[i][m]);
    }
    println();
  }
  println();
  place_numbers();
  for(int i=0; i<map;i++){
    for(int m=0; m<map; m++){
   print(values[i][m]);
    }
    println();
  }
}
  
  
void draw(){
  int sum=0;
  background(0,0,0);


  for(int i=0; i<map;i++){
    for(int m=0; m<map; m++){
     if(press[i][m]==1){
        b[i][m].show();}
    }
       // println();
  }
 
  for(int i=0; i<map;i++){
    for(int m=0; m<map; m++){
      if (values[i][m]==-1){
        outputb(((i)*25+1),((m)*25+1));
      }
    }
  }
 for(int i=0; i<map;i++){
    for(int m=0; m<map; m++){
     outputpic(((i)*25),((m)*25), values[i][m]);
  }
}
  for(int i=0; i<map;i++){
    for(int m=0; m<map; m++){
    if(press[i][m]==0){
        b[i][m].show();}
    }
  }
  if (finish==0){
 for(int i=0; i<map;i++){
    for(int m=0; m<map; m++){
      if(press[i][m]==2){
      image(img9,((i)*25)+1,((m)*25)+1,width/22.1,height/22.1);}
      if(press[i][m]==3){
      image(img10,((i)*25)+1,((m)*25)+1,width/22.1,height/22.1);}
    }
 }
  }
  else{
    for(int i=0; i<map;i++){
    for(int m=0; m<map; m++){
    if(press[i][m]==2){
      image(img12,((i)*25)+1,((m)*25)+1,width/22.1,height/22.1);}
            if(press[i][m]==3){
      image(img13,((i)*25)+1,((m)*25)+1,width/22.1,height/22.1);}
    }}
  }
 if (finish==0){
 sum=0;
 for(int i=0; i<map;i++){
    for(int m=0; m<map; m++){
      if (press[i][m]==1){
          sum++;}
    }}
    if (sum==map){
      println("You win");
    finish=1;}}
    
    
      if (finish==1){
      for(int i=0; i<map;i++){
    for(int m=0; m<map; m++){
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
    for (int i=0; i<amountb; i++){
      int one=(int)(Math.random()*(map-1)+1);
      int two=(int)(Math.random()*(map-1)+1);
      if(values[one][two]==-1){ 
        i--;
      }else{
        values[one][two]=-1;
      }
    }
  }
  
  void outputb(int x, int y){
    
    image(img11,y,x,width/22.1,height/22.1);
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
        image(img1,y,x,width/22.1,height/22.1);}
       if (num==2){
        image(img2,y,x,width/22.1,height/22.1);}
        if (num==3){
        image(img3,y,x,width/22.1,height/22.1);}
        if (num==4){
        image(img4,y,x,width/22.1,height/22.1);}
        if (num==5){
        image(img5,y,x,width/22.1,height/22.1);}
        if (num==6){
        image(img6,y,x,width/22.1,height/22.1);}
        if (num==7){
        image(img7,y,x,width/22.1,height/22.1);}
        if (num==8){
        image(img8,y,x,width/22.1,height/22.1);}
  }
  
  
  void place_numbers()
  {
    int sum;
     for(int i=0; i<map;i++){
    for(int m=0; m<map; m++){
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
        if(i==(map-1)){}
        else{
        if (m==0){}
        else{
        if (values[i+1][m-1]==-1){
          sum=sum+1;}}}
          
        //bottom middle
        if(i==(map-1)){}
        else{
        if (values[i+1][m]==-1){
          sum=sum+1;}}
          
        //bottom right
        if(m==(map-1)){}
        else{
        if(i==(map-1)){}
        else{
        if (values[i+1][m+1]==-1){
          sum=sum+1;}}}
          
        //right middle
        if(m==(map-1)){}
        else{
        if (values[i][m+1]==-1){
          sum=sum+1;}}
          
        //top right
        if(i==0){}
        else{
        if(m==(map-1)){}
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
    for(int k=0;k<map;k++){
      for(int i=0; i<map;i++){
    for(int m=0; m<map; m++){
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
        if(i==(map-1)){}
        else{
        if (m==0){}
        else{
          if (press[i+1][m-1]==2){}
         else{}
        if (press[i+1][m-1]==0){
          press[i+1][m-1]=1;
         b[i+1][m-1].open();}}}
          
        //bottom middle
        if(i==(map-1)){}
        else{
          if (press[i+1][m]==2){}
         else{}
        if (press[i+1][m]==0){
         press[i+1][m]=1; 
        b[i+1][m].open();}}
          
        //bottom right
        if(m==(map-1)){}
        else{
        if(i==(map-1)){}
        else{
          if (press[i+1][m+1]==2){}
         else{}
        if (press[i+1][m+1]==0){
         press[i+1][m+1]=1;
        b[i+1][m+1].open();}}}
          
        //right middle
        if(m==(map-1)){}
        else{
          if (press[i][m+1]==2){}
         else{}
        if (press[i][m+1]==0){
         press[i][m+1]=1;
        b[i][m+1].open();}}
          
        //top right
        if(i==0){}
        else{
        if(m==(map-1)){}
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
     for(int i=0; i<map;i++){
    for(int m=0; m<map; m++){
      

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

/*  void keyTyped() {
    if (kep==1){

    if (key == '9') { 
      println("9");}
    else if (key == '8') {
      println("8");}
     else if (key == '7') {
      println("7");}
    else  if (key == '6') {
      println("6");}
    else  if (key == '5') {
      println("5");}
    else  if (key == '4') {
      println("4");}
    else  if (key == '3') {
      println("3");}
     else if (key == '2') {
      println("2");}
     else if (key == '1') {
      println("1");}
      else if (key == '0') {
      println("0");}
       else if (key == 't') {
      println("-1");
      kep=-1;}
   
    
     }
 
    
}*/

  
