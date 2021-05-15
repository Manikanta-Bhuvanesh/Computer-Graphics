color c,p,b;
void setup(){
 size(300,300); 
 background(0,255,0);
 b=color(0);//colour to fill
}
void draw(){
  rect(50,50,150,150);
  c=get(1,1);
  for(int i=0;i<=300;i++){
    for(int j=0;j<=300;j++){
      p=get(i,j);
      if(c!=p){
        set(i,j,b);
      }
    }
  }
}
