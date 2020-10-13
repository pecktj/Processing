class Ball{
  float move;
  float movex;
  float xv=0;
  float yv=1.5;
  float posy=350;
  float posx=250;
  void show()
  {
    stroke(0,0,0);
    fill(255,255,245);
    posy=350+move;
    posx=250+movex;
    ellipse(posx,posy,8,8);
  }
  void cont(){
    move=yv+move;
    movex=xv+movex;
  }
  
  float y(){
    return posy;
  }
  float x(){
    return posx;
  }
  void setyv(float a){
    yv=a;}
    float yv(){
    return yv;
  }
   void setxv(float a){
    xv=a;}
    float xv(){
    return xv;
    }
}
