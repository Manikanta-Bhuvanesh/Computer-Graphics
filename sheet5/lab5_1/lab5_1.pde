int rx1 = 200,ry1=200,rx2=400,ry2=400;
int h=rx2-rx1;
int w =ry2-ry1;
int lx1=250,ly1=350,lx2=400,ly2=350;
float fx1,fx2,fy1,fy2;
int m;
float n;
void setup() {
  size(500, 500);
  
}

void draw() {
  background(255);
  m=(ly2-ly1)/(lx2-lx1);
  if(m!=0){
  n=1/m;
  }
  if(ly1<ry2 && ly1>ry1){
    fy1=ly1;
  }
  else{
    fy1=ly1+m*(rx1-lx1);
  }
  if(lx1>rx1&&lx1<rx2){
    fx1=lx1;
  }
  else if(m==0){
    fx1=rx1;
  }
  else{
    fx1=n*(fy1-ly1+(m*lx1));
  }
  if(ly2<ry2 && ly2>ry1){
    fy2=ly2;
  }
  else{
    fy2=(ly2+m*(rx2-lx2));
  }
  if(lx2>rx1&&lx2<rx2){
    fx2=lx2;
  }
 else if(m==0){
    fx2=rx2;
  }
  else{
   fx2=n*(fy2-ly2+(m*lx2));
  }
  rect(rx1,ry1,h,w);

  line(fx1,fy1,fx2,fy2);
}
