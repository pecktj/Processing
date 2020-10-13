Block[] b=new Block[20];
Platform p;
Ball ball=new Ball();
sideWall s=new sideWall();
topWall t=new topWall();
void setup(){
  frameRate(60);
  size(500,500);
  p= new Platform();
  for (int i=0; i<20; i++){
    b[i]=new Block();
    b[i].create();
  }
  background(20,20,20);
  

}

void draw(){
  background(20,20,20);
  ball.cont();
  ball.show();
  for (int i=0; i<20; i++){
    b[i].show();
  }
  p.keyPressed();
  p.cont();
  p.show();
  if(ballpi()==true){
    ball.setyv((-1*ball.yv()));
    if (p.xv()>0){
      if (ball.xv()>0){
      ball.setxv((random(1,6)*.1)*Math.abs(ball.yv())+ball.xv());
      }
      else{
        ball.setxv((random(1,6)*.1)*Math.abs(ball.yv()));
      }
    }
    else if(p.xv()<0){
      if (ball.xv()<0){
      ball.setxv((random(-6,-1)*.1)*Math.abs(ball.yv())+ball.xv());
    }
    else
    {
      ball.setxv((random(-6,-1)*.1)*Math.abs(ball.yv()));
    }
    }
    else if(p.xv()==0){
      //ball.setxv(0);
    }
  }
  
 // else{
   // rect(10,10,10,10);}
   s.show();
   t.show();
    if(ballsw()==true){
      ball.setxv(ball.xv()*-1);
   }
   if(balltw()==true){
      ball.setyv(ball.yv()*-1);
   }
   if (rightw()==true){
      ball.setxv(ball.xv()*-1);
   }
   if (twall()==true){
      ball.setyv(ball.yv()*-1);
   }
}


void bottom(){
  fill(255,255,255);
  rect(250,470,45,5);
}
boolean ballpi(){
  float[] xp=new float[55];
  for (int i=0; i<55; i++){
    xp[i]=abs(ball.x()-(p.x()+i));
  }
  for(int i=0; i<55; i++){
    if (xp[i]<1&&abs(ball.y()-470)<5){
    return true;}
  }
   return false;
}
boolean ballsw(){
  if ((ball.x()>497)&&(ball.x()<502)||((ball.x()>0)&&(ball.x()<5))){
    return true;}
    return false;

}
boolean balltw(){
  if ((ball.y()>0)&&(ball.y()<5)){
    return true;}
    return false;

}
boolean rightw(){
  //left
   for (int i=0; i<20; i++){
      float[] yp=new float[14];
    for ( int m=1;m<14;m++){
      yp[m]=abs(ball.y()-(b[i].y()+m));
      if(yp[m]<4&&(abs(ball.x()-b[i].x())<3.5)){
      b[i].setx(500);
      b[i].sety(500);
        return true;
      }
    }
  }
  //right
  for (int i=0; i<20; i++){
      float[] yp=new float[14];
    for ( int m=1;m<14;m++){
      yp[m]=abs(ball.y()-(b[i].y()+m));
      if((yp[m]<4)&&(abs(ball.x()-(b[i].x()+28))<3.5)){
      b[i].setx(500);
      b[i].sety(500);
        return true;
      }
    }
  }
  return false;
}
boolean twall(){
  //top
  for (int i=0; i<20; i++){
      float[] yp=new float[30];
    for ( int m=0;m<30;m++){
      yp[m]=abs(ball.x()-(b[i].x()+m));
      if((yp[m]<4)&&(abs(ball.y()-(b[i].y()))<3.5)){
      b[i].setx(500);
      b[i].sety(500);
        return true;
      }
    }
  }
  //bottom
 for (int i=0; i<20; i++){
      float[] yp=new float[30];
    for ( int m=0;m<30;m++){
      yp[m]=abs(ball.x()-(b[i].x()+m));
      if((yp[m]<4)&&(abs(ball.y()-(b[i].y()+14))<3.5)){
      b[i].setx(500);
      b[i].sety(500);
        return true;
      }
    }
  }
   return false;
}
