class Block{
  int posx=0;
  int posy=0;

  void create(){
  posx=int(random(20,455));
  posy=int(random(20,250));
  }
  
  void show(){
  stroke(0,0,0);
  fill(255,0,0);
  rect(posx,posy,30,15);
  //right
   stroke(255,0,0);
    fill(255,0,0);
  rect(posx+28,posy,2,15);
  //left
   stroke(255,0,0);
   fill(255,0,0);
  rect(posx,posy,2,15);
  //top
   stroke(255,0,0);
   fill(255,0,0);
  rect(posx,posy,30,2);
  //bottom
   stroke(255,0,0);
  fill(255,0,0);
  rect(posx, posy+13,30,2);




}
  
    float y(){
    return posy;
  }
  float x(){
    return posx;
  }
  void setx(int a){
    posx=a;
  }
  void sety(int a){
    posy=a;
  }
  
}
