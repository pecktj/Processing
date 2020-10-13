class Block{
int posx=0;
int posy=0;
int c1=128;
int c2=128;
int c3=128;

    void create(int x, int y)
    {
      posx=x;
      posy=y;
    }

     void show(){
    for(int i=0; i<5;i++){
    for(int m=0; m<5; m++){
      fill(c1,c2,c3);
      stroke(0,0,0);
     rect(posx,posy,25,25);
     
    }
  }
       
       
     }
    int press(int num){
 
      if ((mouseButton == LEFT)) {
     
        if(((mouseX-posx)<25)&&((mouseY-posy)<25)&&((mouseY-posy)>-1)&&((mouseX-posx)>-1)){
          if (num==2){
            return 2;}
     c1=190;
     c2=190;
     c3=190;
     return 1;
        }
   
  } else if ((mouseButton == RIGHT)) {
   
    if(((mouseX-posx)<25)&&((mouseY-posy)<25)&&((mouseY-posy)>-1)&&((mouseX-posx)>-1)){
            if(num==2){
              return 3;}
              if(num==3){
              return 0;}
    return 2;}
  }
      
      return num;}
    
    void open()
    {
     c1=190;
     c2=190;
     c3=190;
    }
}
