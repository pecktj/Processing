int values[][]=new int[22][10];
int colors[][]=new int[22][10];
int dropRate=10;
int line=0;
int timer=0;
int checkL=0;
int checkR=0;
int block=0;
int checkB=0;
int rotate=1;
int loser=0;
int nextB=int(random(7));
PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
PImage img7;
//----------------------------------------------------------------------------
void setup(){
  frameRate(60);
  size(500,450);
  img1=loadImage("O.PNG");
  img2=loadImage("Long.PNG");
  img3=loadImage("S.PNG");
  img4=loadImage("Z.PNG");
  img5=loadImage("T.PNG");
  img6=loadImage("L.PNG");
  img7=loadImage("ReverseL.PNG");
  back();
  getShape();
  rotate=1;
   for (int i=0; i<21; i++){
    for (int m=0; m<10; m++){
     print(values[i][m]+" ");
    }
  println();}
  BottomSet();
}
//----------------------------------------------------------------------------
void draw(){
  back();
   if (timer==dropRate){
     println(checkR);
     println(checkL);
     checkR=0;
     checkL=0;
    for (int i=20; i>=0; i--){
    for (int m=0; m<10; m++){
       if (values[i][m]==1){
         if (values[i+1][m]==2){
           checkB=1;
     }}}}
    if (checkB==0){
      for (int i=20; i>=0; i--){
    for (int m=0; m<10; m++){
       if (values[i][m]==1){
         values[i][m]=0;
         values[i+1][m]=1;
         timer=0;}
        }
         }
      }
      
    
    else if (checkB==1){
      for (int p=20; p>=0; p--){
          for (int k=9; k>=0; k--){
             if (values[p][k]==1){
               values[p][k]=2;
               colors[p][k]=block;
             }
          }}
          checkB=2;
          timer=dropRate/2;
          CheckTetris();

    }
    else
    {
      if (values[1][5]==2||values[1][4]==2){
         fill(255, 0, 0);
        text("Lose", 30, 75); 
        textSize(42);
        timer=dropRate*100;
        loser=1;
      }
      else{
       getShape();
       nextB=int(random(7));
       rotate=1;
          checkB=0;
          timer=0;}
    }
   
   

   /*   for (int i=20; i>=0; i--){
    for (int m=0; m<10; m++){
       if (values[i][m]==1){
         if (values[i+1][m]==2){
           timer=0;
         for (int p=20; p>=0; p--){
          for (int k=9; k>=0; k--){
             if (values[p][k]==1){
               values[p][k]=2;
             }
          }}
          getShape();
         }else{
         if (values[i+1][m+1]==2){
           values[i][m]=2;}
         values[i][m]=0;
         values[i+1][m]=1;
         timer=0;}
        }
         }
      }*/
    
      println();
     // print(checkB);
    for (int i=0; i<22; i++){
    for (int m=0; m<10; m++){
     print(colors[i][m]+" ");
    }
  println();}
   }
   
   displayBlocks();
  timer++;
}
//----------------------------------------------------------------------------
void keyPressed() {
  println("pressed " + int(key) + " " + keyCode);
}
//----------------------------------------------------------------------------
void keyTyped() {
  println("typed " + int(key) + " " + keyCode);
 for (int i=20; i>=0; i--){
    for (int m=9; m>=0; m--){
       if (values[i][m]==1){
          if ((m+1)==10){
        checkR=1;}
     if (checkR==0){
      if (values[i][m+1]==2){
     checkR=1;
      }}
     
    }}}
    for (int i=0; i<=20; i++){
    for (int m=0; m<=8; m++){
       if (values[i][m]==1){
          if ((m-1)==-1){
        checkL=1;}
        if (checkL==0){
      if (values[i][m-1]==2){
     checkL=1;}
      }
    }}}
//--------------------
  if (int(key)==100){
    if (checkR==0){
      checkL=0;
    for (int i=20; i>=0; i--){
    for (int m=9; m>=0; m--){
       if (values[i][m]==1){
         values[i][m]=0;
         values[i][m+1]=1;
         println((m+1)+" ");
       }}}
     }
     else
     {
       
     }
  }
  if (int(key)==97){
    checkR=0;
    if (checkL==0){
    for (int i=20; i>=0; i--){
    for (int m=0; m<10; m++){
       if (values[i][m]==1){
         values[i][m]=0;
         values[i][m-1]=1;
        
       }}}}
  }
//-----------------------------------
  if (int(key)==119){
    int once=0;
    if(block==5){
      if (rotate==1){
        if(once==0){
         for (int i=0; i<21; i++){
           for (int m=0; m<10; m++){
             if(values[i][m]==1){
               if(rotate==1){
                 if (LBlock()==false){
                  values[i+1][m]=0;
                  values[i][m]=0;
                  values[i+1][m-2]=0;
                  values[i+1][m-1]=0;
                   values[i+1][m]=1;               
                   values[i-1][m-1]=1;                  
                   values[i+1][m-1]=1;  
                   values[i][m-1]=1;
                   rotate=2;
                    once=1;}
             }
             }
        }}
      }  
      }
      if(rotate==2){
        if(once==0){
        for (int i=0; i<21; i++){
           for (int m=0; m<10; m++){
             if(values[i][m]==1){
               if(rotate==2){
                 if (LBlock()==false){
                  values[i][m]=0;
                  values[i+1][m]=0;
                  values[i+2][m]=0;
                   values[i+2][m+1]=0;
                   values[i+1][m+1]=1;
                  values[i+1][m]=1;
                  values[i+1][m-1]=1;
                   values[i+2][m-1]=1;
                   rotate=3;
               }
        
             }     
          }
           }}
           }
      }
      else if(rotate==3){
        if(once==0){
        for (int i=0; i<21; i++){
           for (int m=0; m<10; m++){
             if(values[i][m]==1){
               if(rotate==3){
                 if (LBlock()==false){
                  values[i][m]=0;
                  values[i][m+1]=0;
                  values[i][m+2]=0;
                   values[i+1][m]=0;
                   values[i][m]=1;
                  values[i][m+1]=1;
                  values[i+1][m+1]=1;
                   values[i+2][m+1]=1;
                   rotate=4;
               }
        
             }     
          }
           }}
           }
      }
      else if(rotate==4){
        if(once==0){
        for (int i=0; i<21; i++){
           for (int m=0; m<10; m++){
             if(values[i][m]==1){
               if(rotate==4){
                 if (LBlock()==false){
                  values[i][m]=0;
                  values[i][m+1]=0;
                  values[i+1][m+1]=0;
                   values[i+2][m+1]=0;
                   values[i+1][m]=1;
                  values[i+1][m+1]=1;
                  values[i+1][m+2]=1;
                   values[i][m+2]=1;
                   rotate=1;
               }
        
             }     
          }
           }}
           }
        
      }
  }
  
//----------------------------------------------------------
  else if (block==6){
     if (rotate==1){
        if(once==0){
         for (int i=0; i<21; i++){
           for (int m=0; m<10; m++){
             if(values[i][m]==1){
               if(rotate==1){
                 if (ReverseL()==false){
                  values[i][m]=0;
                  values[i+1][m]=0;
                  values[i+1][m+1]=0;
                  values[i+1][m+2]=0;
                   values[i][m+1]=1;               
                   values[i][m+2]=1;                  
                   values[i+1][m+1]=1;  
                   values[i+2][m+1]=1;
                   rotate=2;
                    once=1;}
             }
             }
        }}
      }  
      }
      if(rotate==2){
        if(once==0){
        for (int i=0; i<21; i++){
           for (int m=0; m<10; m++){
             if(values[i][m]==1){
               if(rotate==2){
                 if (ReverseL()==false){
                  values[i][m]=0;
                  values[i][m+1]=0;
                  values[i+1][m]=0;
                   values[i+2][m]=0;
                   values[i+1][m+1]=1;
                  values[i+1][m]=1;
                  values[i+1][m-1]=1;
                   values[i+2][m+1]=1;
                   rotate=3;
               }
        
             }     
          }
           }}
           }
      }
      else if(rotate==3){
        if(once==0){
        for (int i=0; i<21; i++){
           for (int m=0; m<10; m++){
             if(values[i][m]==1){
               if(rotate==3){
                 if (ReverseL()==false){
                  values[i][m]=0;
                  values[i][m+1]=0;
                  values[i][m+2]=0;
                   values[i+1][m+2]=0;
                   values[i+1][m]=1;
                  values[i-1][m+1]=1;
                  values[i][m+1]=1;
                   values[i+1][m+1]=1;
                   rotate=4;
               }
        
             }     
          }
           }}
           }
      }
      else if(rotate==4){
        if(once==0){
        for (int i=0; i<21; i++){
           for (int m=0; m<10; m++){
             if(values[i][m]==1){
               if(rotate==4){
                 if (ReverseL()==false){
                  values[i][m]=0;
                  values[i+1][m]=0;
                  values[i+2][m]=0;
                   values[i+2][m-1]=0;
                   values[i+1][m-1]=1;
                  values[i+2][m+1]=1;
                  values[i+2][m]=1;
                   values[i+2][m-1]=1;
                   rotate=1;
               }
        
             }     
          }
           }}
           }
        
      }
  }
//-----------------------------------------------------------------
  else if (block==4)
  {
     if (rotate==1){
        if(once==0){
         for (int i=0; i<21; i++){
           for (int m=0; m<10; m++){
             if(values[i][m]==1){
               if(rotate==1){
                 if (Tblock()==false){
                  values[i][m]=0;
                  values[i+1][m]=0;
                  values[i+1][m+1]=0;
                  values[i+1][m-1]=0;
                   values[i][m]=1;               
                   values[i+1][m]=1;                  
                   values[i+2][m]=1;  
                   values[i+1][m+1]=1;
                   rotate=2;
                    once=1;}
             }
             }
        }}
      }  
      }
      if(rotate==2){
        if(once==0){
        for (int i=0; i<21; i++){
           for (int m=0; m<10; m++){
             if(values[i][m]==1){
               if(rotate==2){
                 if (Tblock()==false){
                  values[i][m]=0;
                  values[i+1][m+1]=0;
                  values[i+1][m]=0;
                   values[i+2][m]=0;
                   values[i+1][m+1]=1;
                  values[i+1][m]=1;
                  values[i+1][m-1]=1;
                   values[i+2][m]=1;
                   rotate=3;
               }
        
             }     
          }
           }}
           }
      }
      else if(rotate==3){
        if(once==0){
        for (int i=0; i<21; i++){
           for (int m=0; m<10; m++){
             if(values[i][m]==1){
               if(rotate==3){
                 if (Tblock()==false){
                  values[i][m]=0;
                  values[i][m+1]=0;
                  values[i][m+2]=0;
                   values[i+1][m+1]=0;
                   values[i][m]=1;
                  values[i][m+1]=1;
                  values[i-1][m+1]=1;
                   values[i+1][m+1]=1;
                   rotate=4;
               }
        
             }     
          }
           }}
           }
      }
      else if(rotate==4){
        if(once==0){
        for (int i=0; i<21; i++){
           for (int m=0; m<10; m++){
             if(values[i][m]==1){
               if(rotate==4){
                 if (Tblock()==false){
                  values[i][m]=0;
                  values[i+1][m]=0;
                  values[i+2][m]=0;
                   values[i+1][m-1]=0;
                   values[i+1][m]=1;
                  values[i+1][m+1]=1;
                  values[i+1][m-1]=1;
                   values[i][m]=1;
                   rotate=1;
               }
        
             }     
          }
           }}
           }
        
      }
    
  }
//-----------------------------------------------------------
  else if(block==2){
    if (rotate==1){
        if(once==0){
         for (int i=0; i<21; i++){
           for (int m=0; m<10; m++){
             if(values[i][m]==1){
               if(rotate==1){
                 if (Sblock()==false){
                  values[i][m]=0;
                  values[i+1][m]=0;
                  values[i][m+1]=0;
                  values[i+1][m-1]=0;
                   values[i][m]=1;               
                   values[i+1][m]=1;                  
                   values[i+1][m+1]=1;  
                   values[i+2][m+1]=1;
                   rotate=2;
                    once=1;}
             }
             }
        }}
      }  
      }
      if(rotate==2){
        if(once==0){
        for (int i=0; i<21; i++){
           for (int m=0; m<10; m++){
             if(values[i][m]==1){
               if(rotate==2){
                 if (Sblock()==false){
                  values[i][m]=0;
                  values[i+1][m+1]=0;
                  values[i+1][m]=0;
                   values[i+2][m+1]=0;
                   values[i][m]=1;
                  values[i][m+1]=1;
                  values[i+1][m-1]=1;
                   values[i+1][m]=1;
                   rotate=1;
               }
        
             }     
          }
           }}
           }
      }
    
    
  }
//----------------------------------------------------------------
    else if (block==3){
      if (rotate==1){
        if(once==0){
         for (int i=0; i<21; i++){
           for (int m=0; m<10; m++){
             if(values[i][m]==1){
               if(rotate==1){
                 if (Zblock()==false){
                  values[i][m]=0;
                  values[i][m+1]=0;
                  values[i+1][m+1]=0;
                  values[i+1][m+2]=0;
                   values[i][m+2]=1;               
                   values[i+1][m+2]=1;                  
                   values[i+1][m+1]=1;  
                   values[i+2][m+1]=1;
                   rotate=2;
                    once=1;}
             }
             }
        }}
      }  
      }
      if(rotate==2){
        if(once==0){
        for (int i=0; i<21; i++){
           for (int m=0; m<10; m++){
             if(values[i][m]==1){
               if(rotate==2){
                 if (Zblock()==false){
                  values[i][m]=0;
                  values[i+1][m]=0;
                  values[i+1][m-1]=0;
                   values[i+2][m-1]=0;
                   values[i][m-1]=1;
                  values[i][m-2]=1;
                  values[i+1][m-1]=1;
                   values[i+1][m]=1;
                   rotate=1;
               }
        
             }     
          }
           }}
           }
      }
    
    }
//------------------------------------------------------------------
    else if(block==1){
       if (rotate==1){
        if(once==0){
         for (int i=0; i<21; i++){
           for (int m=0; m<10; m++){
             if(values[i][m]==1){
               if(rotate==1){
                 if (longBar()==false){
                  values[i][m]=0;
                  values[i][m+1]=0;
                  values[i][m+2]=0;
                  values[i][m+3]=0;
                   values[i][m+1]=1;               
                   values[i+1][m+1]=1;                  
                   values[i+2][m+1]=1;  
                   values[i-1][m+1]=1;
                   rotate=2;
                    once=1;}
             }
             }
        }}
      }  
      }
      if(rotate==2){
        if(once==0){
        for (int i=0; i<21; i++){
           for (int m=0; m<10; m++){
             if(values[i][m]==1){
               if(rotate==2){
                 if (longBar()==false){
                  values[i][m]=0;
                  values[i+1][m]=0;
                  values[i+2][m]=0;
                   values[i+3][m]=0;
                   values[i+1][m-1]=1;
                  values[i+1][m]=1;
                  values[i+1][m+1]=1;
                   values[i+1][m+2]=1;
                   rotate=1;
               }
        
             }     
          }
           }}
           }
      }
    }
  }

}
//----------------------------------------------------------------------------
void keyReleased() {
  println("released " + int(key) + " " + keyCode);
}
//----------------------------------------------------------------------------
void back(){
  background(200,200,200);
  fill(200,200,200);
  rect(368,162,100,100);
     textSize(32);
  // fill(0, 102, 153);
   //text("score",25, 35); 
    //textSize(32);
   fill(0, 102, 153);
   text("line", 25, 35); 
   textSize(32);
     fill(0, 102, 153);
  text(line,  100, 35); 
  textSize(32);
   fill(0, 102, 153);
   text("Next", 380, 150); 
   if (nextB==0){
   image(img1,380,180,width/6,height/6);}
   else if (nextB==1){
  image(img2,375,190,width/5.5,height/12); }
    else if (nextB==2){
  image(img3,380,180,width/6,height/6); }
    else if (nextB==3){
  image(img4,380,180,width/6,height/6); }
    else if (nextB==4){
  image(img5,380,180,width/6,height/6); }
    else if (nextB==5){
   image(img6,380,180,width/6,height/6);}
    else if (nextB==6){
  image(img7,380,180,width/6,height/6); }
  // textSize(32);
  // fill(0, 102, 153);
  // text(nextB, 405, 220); 
  
  for (int i=0; i<10; i++){
    for (int m=1; m<22; m++){
      stroke(200,200,200);
      fill(20,20,20);
     rect(((i*20)+150), ((m*20)+30),20,20); 
    }}
     stroke(0,0,0);
   line(0,50,500,50);
   if(loser==1){
     fill(255, 0, 0);
        text("Lose", 30, 75); 
        textSize(42);}
}
//----------------------------------------------------------------------------
void upBack(){

  
}
//----------------------------------------------------------------------------
void displayBlocks(){
   for (int i=1; i<21; i++){
    for (int m=0; m<10; m++){
      if (values[i][m]==1){
         if(block==0){
        fill(255,255,0);}
         else if (block==1){
         fill(64,224,208);}
         else if (block==2){
         fill(127,255,0);}
        else if (block==3){
         fill(240,0,0);}
        else if (block==4){
         fill(148,0,211);}
        else if (block==5){
        fill(255,165,0);}
         else if (block==6){
         fill(0,0,240);}

        rect(((m*20)+150), ((i*20)+30),20,20); }
        
        if (values[i][m]==2){
          if (colors[i][m]==0){
            fill(255,255,0);}
          else if(colors[i][m]==1){
            fill(64,224,208);}
             else if(colors[i][m]==2){
           fill(127,255,0);}
             else if(colors[i][m]==3){
           fill(240,0,0);}
             else if(colors[i][m]==4){
            fill(148,0,211);}
             else if(colors[i][m]==5){
            fill(255,165,0);}
             else if(colors[i][m]==6){
           fill(0,0,240);}
        rect(((m*20)+150), ((i*20)+30),20,20);
  
          }
    }}
}
//----------------------------------------------------------------------------
void BottomSet(){
values[21][0]=2;
values[21][1]=2;
values[21][2]=2;
values[21][3]=2;
values[21][4]=2;
values[21][5]=2;
values[21][6]=2;
values[21][7]=2;
values[21][8]=2;
values[21][9]=2;
}
//----------------------------------------------------------------------------
void getShape(){
  block=nextB;
  if (block==0){ // O-Block
  values[0][4]=1;
  values[0][5]=1;
  values[1][5]=1;
  values[1][4]=1;
  }
  else if(block==1){ // Long Bar
    values[1][3]=1;
  values[1][4]=1;
  values[1][5]=1;
  values[1][6]=1;
  }
  else if (block==2){ // S-Block
    values[1][3]=1;
  values[1][4]=1;
  values[0][4]=1;
  values[0][5]=1;
  }
  else if(block==3){ // Z-Block
    values[0][3]=1;
  values[0][4]=1;
  values[1][4]=1;
  values[1][5]=1;
  }
  else if(block==4){ // T-Block
    values[1][3]=1;
  values[1][4]=1;
  values[1][5]=1;
  values[0][4]=1;
  }
  else if (block==5){ // L-Block
    values[1][3]=1;
  values[1][4]=1;
  values[1][5]=1;
  values[0][5]=1;
  }
  else if (block==6){ // Reverse L
    values[1][3]=1;
  values[1][4]=1;
  values[1][5]=1;
  values[0][3]=1;
  }
  
}
//----------------------------------------------------------------------------
boolean LBlock(){
for (int i=0; i<21; i++){
      for (int m=0; m<10; m++){
          if(values[i][m]==1){
            
             if(rotate==1){
                if (i==0){
                   return true;
                 }
                 else{
               if(!(values[i+1][m]==2||values[i-1][m-1]==2||values[i+1][m-1]==2|| values[i][m-1]==2)){
                return false;
               }
               else{
                 return true;
               }
               }
             }
               else if(rotate==2){
                 if (m==0||i==0){
                   return true;
                 }
                 else{
                 
                if (!(values[i+1][m+1]==2||values[i+1][m-1]==2||values[i+1][m]==2||values[i+2][m-1]==2)){
                 return false;
               }
               else
               {
                 return true;
               }
                 }
             }
                else if(rotate==3){
                   if (m==0||i==0){
                   return true;
                 }
                 else{
                if (!(values[i][m]==2||values[i][m+1]==2||values[i+1][m+1]==2||values[i+2][m+1]==2)){
                 return false;
               }
               else{
                 return true;
               }
          }
                }
           else if(rotate==4){
              if (m==8||i==0){
                   return true;
                 }
                 else{
                if (!(values[i+1][m]==2||values[i+1][m+1]==2||values[i+1][m+2]==2||values[i][m+2]==2)){
                 return false;
               }
               else{
                 return true;
               }
                 }
          }
            
      }
      
        }}
        return true;
}
//-----------------------------------------------------------------------------------------------------------------
boolean ReverseL()
{
for (int i=0; i<21; i++){
      for (int m=0; m<10; m++){
          if(values[i][m]==1){
            
             if(rotate==1){
                if (i==0){
                   return true;
                 }
                 else{
               if(!(values[i][m+1]==2||values[i][m+2]==2||values[i+1][m+1]==2|| values[i+2][m+1]==2)){
                return false;
               }
               else{
                 return true;
               }
               }
             }
               else if(rotate==2){
                 if (m==0||i==0){
                   return true;
                 }
                 else{
                 
                if (!(values[i+1][m+1]==2||values[i+1][m]==2||values[i+1][m-1]==2||values[i+2][m+1]==2)){
                 return false;
               }
               else
               {
                 return true;
               }
                 }
             }
                else if(rotate==3){
                   if (i==0){
                   return true;
                 }
                 else{
                if (!(values[i+1][m]==2||values[i-1][m+1]==2||values[i][m+1]==2||values[i+1][m+1]==2)){
                 return false;
               }
               else{
                 return true;
               }
          }
                }
           else if(rotate==4){
              if (m==9||i==0){
                   return true;
                 }
                 else{
                if (!(values[i+1][m-1]==2||values[i+2][m+1]==2||values[i+2][m]==2||values[i+2][m-1]==2)){
                 return false;
               }
               else{
                 return true;
               }
                 }
          }
            
      }
      
        }}
        return true;
}
//--------------------------------------------------------------------------------------------------------------------
boolean Tblock()
{
 for (int i=0; i<21; i++){
      for (int m=0; m<10; m++){
          if(values[i][m]==1){
            
             if(rotate==1){
                if (i==0){
                   return true;
                 }
                 else{
               if(!(values[i][m]==2||values[i+1][m]==2||values[i+2][m]==2|| values[i+1][m+1]==2)){
                return false;
               }
               else{
                 return true;
               }
               }
             }
               else if(rotate==2){
                 if (m==0||i==0){
                   return true;
                 }
                 else{
                 
                if (!(values[i+1][m+1]==2||values[i+1][m]==2||values[i+1][m-1]==2||values[i+2][m]==2)){
                 return false;
               }
               else
               {
                 return true;
               }
                 }
             }
                else if(rotate==3){
                   if (i==0){
                   return true;
                 }
                 else{
                if (!(values[i][m]==2||values[i][m+1]==2||values[i-1][m+1]==2||values[i+1][m+1]==2)){
                 return false;
               }
               else{
                 return true;
               }
          }
                }
           else if(rotate==4){
              if (m==9||i==0){
                   return true;
                 }
                 else{
                if (!(values[i+1][m]==2||values[i+1][m+1]==2||values[i+1][m-1]==2||values[i][m]==2)){
                 return false;
               }
               else{
                 return true;
               }
                 }
          }
            
      }
      
        }}
        return true;
}
//------------------------------------------------------------------------------------------
boolean Sblock(){
  for (int i=0; i<21; i++){
      for (int m=0; m<10; m++){
          if(values[i][m]==1){
            
             if(rotate==1){
                if (i==0){
                   return true;
                 }
                 else{
               if(!(values[i][m]==2||values[i+1][m]==2||values[i+1][m+1]==2|| values[i+2][m+1]==2)){
                return false;
               }
               else{
                 return true;
               }
               }
             }
               else if(rotate==2){
                 if (m==0||i==0){
                   return true;
                 }
                 else{
                 
                if (!(values[i][m]==2||values[i][m+1]==2||values[i+1][m-1]==2||values[i+1][m]==2)){
                 return false;
               }
               else
               {
                 return true;
               }
                 }
             }
          }
      }}
      return true;
      
}
//----------------------------------------------------------------------------------------
boolean Zblock(){
  for (int i=0; i<21; i++){
      for (int m=0; m<10; m++){
          if(values[i][m]==1){
            
             if(rotate==1){
                if (i==0){
                   return true;
                 }
                 else{
               if(!(values[i][m+2]==2||values[i+1][m+2]==2||values[i+1][m+1]==2|| values[i+2][m+1]==2)){
                return false;
               }
               else{
                 return true;
               }
               }
             }
               else if(rotate==2){
                 if (m==1||i==0){
                   return true;
                 }
                 else{
                 
                if (!(values[i][m-2]==2||values[i][m-2]==2||values[i+1][m-1]==2||values[i+1][m]==2)){
                 return false;
               }
               else
               {
                 return true;
               }
                 }
             }
          }
      }}
      return true;
      
}
//------------------------------------------------------------------------------------------
boolean longBar(){
 for (int i=0; i<21; i++){
      for (int m=0; m<10; m++){
          if(values[i][m]==1){
            
             if(rotate==1){
                if (i==0){
                   return true;
                 }
                 else{
               if(!(values[i][m+1]==2||values[i+1][m+1]==2||values[i+2][m+1]==2|| values[i-1][m+1]==2)){
                return false;
               }
               else{
                 return true;
               }
               }
             }
               else if(rotate==2){
                 if (m==0||m==8||m==9){
                   return true;
                 }
                 else{
                 
                if (!(values[i+1][m-1]==2||values[i+1][m]==2||values[i+1][m+1]==2||values[i+1][m+2]==2)){
                 return false;
               }
               else
               {
                 return true;
               }
                 }
             }
          }
      }}
      return true;
}
void CheckTetris(){
  for (int i=1; i<21; i++){
     if(values[i][0]+values[i][1]+values[i][2]+values[i][3]+values[i][4]+values[i][5]+values[i][6]+values[i][7]+values[i][8]+values[i][9]==20){
       line++;
       for(int k=i; k>0; k--){
       values[k][0]=values[k-1][0];
       values[k][1]=values[k-1][1];
       values[k][2]=values[k-1][2];
       values[k][3]=values[k-1][3];
       values[k][4]=values[k-1][4];
       values[k][5]=values[k-1][5];
       values[k][6]=values[k-1][6];
       values[k][7]=values[k-1][7];
       values[k][8]=values[k-1][8];
       values[k][9]=values[k-1][9];
       
       colors[k][0]=colors[k-1][0];
       colors[k][1]=colors[k-1][1];
       colors[k][2]=colors[k-1][2];
       colors[k][3]=colors[k-1][3];
       colors[k][4]=colors[k-1][4];
       colors[k][5]=colors[k-1][5];
       colors[k][6]=colors[k-1][6];
       colors[k][7]=colors[k-1][7];
       colors[k][8]=colors[k-1][8];
       colors[k][9]=colors[k-1][9];
       }
     }

  }
  
}
