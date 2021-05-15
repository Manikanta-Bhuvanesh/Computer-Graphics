int r,c;
int x=400;
int y=400;
int dx = 400/8;
void setup(){
  size(400,400);
}
void draw(){
  for(r=0;r<8;r++){
    for(c=0;c<8;c++){
      if((c+r) % 2 == 0){
        fill(0);
      }
      else{
        fill(255);
      }
      rect(r*dx,c*dx,dx,dx);
    } 
}
}
