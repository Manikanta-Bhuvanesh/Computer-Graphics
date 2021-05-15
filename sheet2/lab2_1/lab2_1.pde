int x1=5;
int y1=5;
int x2=130;
int y2=90;
int dx,dy,d;

void setup(){
  size(300,300);
}
void draw(){
  
  dx=x2-x1;
  dy=y2-y1;
  d = 2*(dx-dy);
  while(x1<x2){
    
    if(d>=0){
      point(x1,y1);
      y1=y1+1;
      d=d+(2*dy)-(2*dx);
  }
  else{
    point(x1,y1);
    d=d+(2*dy);
  }
  x1=x1+1;
  }
}
