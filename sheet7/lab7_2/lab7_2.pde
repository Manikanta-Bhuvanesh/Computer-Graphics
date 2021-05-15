float x1,x2,y1,y2,z1,z2,a,b,c,r,rx,ry,rz,d;
float t1,t2,fx1,fx2,fy1,fy2,fz1,fz2;
float dn;
void setup(){
  r=50;
  rx=ry=rz=0;
  x1=y2=50;
  y1=10;
  x2=20;
  z1=30;
  z2=0;
  a=(sq(x2-x1))+(sq(y2-y1))+(sq(z2-z1));
  b=-2*(((x2-x1)*(rx-x1))+((y2-y1)*(ry-y1))+((z2-z1)*(rx-z1)));
  c=(sq(x1-rx))+(sq(y1-ry))+(sq(z1-rz))-(sq(r));
  d=(sq(b))-(4*a*c);
  dn=sqrt(d);
}
void draw(){
  if(d<0){
    print("will not intersect");
  }
  else if(d==0&&a>0){
    t1=-b/(2*a);
     fx1=x1+(t1*(x2-x1));
    fy1=y1+(t1*(y2-y1));
    fz1=z1+(t1*(z2-z1));
    print("["+fx1+","+fy1+","+fz1+"]");
  }
  else{
    t1=(-1)*(b+dn)/(2*a);
    t2=(-1)*(b-dn)/(2*a);
    fx1=x1+(t1*(x2-x1));
    fy1=y1+(t1*(y2-y1));
    fz1=z1+(t1*(z2-z1));
    fx2=x1+(t2*(x2-x1));
    fy2=y1+(t2*(y2-y1));
    fz2=z1+(t2*(z2-z1));
    print("["+fx1+","+fy1+","+fz1+"]");
    print("["+fx2+","+fy2+","+fz2+"]");
  }
}
