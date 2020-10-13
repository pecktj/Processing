class Platform{
  float xv=0.0;
  float posx=230;
  float posy=470;
 void keyPressed(){
  if (key==CODED){
    if(keyCode==LEFT){
      xv=-2.4;}
    if(keyCode==RIGHT){
      xv=2.4;}
      if(keyCode==DOWN){
      xv=0;}
 
  } 
  }
  void cont(){
   posx=posx+xv;
  }
  void show(){
    posx=constrain(posx,0,(500-55));
    stroke(0,0,0);
    fill(255,255,255);
    rect(posx,posy,55,5);
  }
    float y(){
    return posy;
  }
  float x(){
    return posx;
  }
  float xv(){
    return xv;
  }
}
