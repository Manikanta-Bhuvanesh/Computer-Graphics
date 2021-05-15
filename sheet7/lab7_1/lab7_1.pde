int x1=5,x2=5,x3=2,x4=30,y1=5,y2=30,y3=5,y4=5;
double p,q;
double t=((x1-x3)*(y3-y4)-(y1-y3)*(x3-x4))/((x1-x2)*(y3-44)-(y1-y2)*(x3-x4));
void setup(){
}
void draw(){
 p=x1+t*(x2-x1); 
 q=y1+t*(y2-y1);
 print("|" + p+","+q+"|");
}
