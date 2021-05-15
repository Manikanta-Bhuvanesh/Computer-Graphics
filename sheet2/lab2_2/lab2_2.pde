int x =100;
int y=100;
int r= 50;
int p=0;
int d=3-(2*r); 
void setup(){
  size(300,300);
}
void draw(){
        point(p+x,r+y);  
        point(p+x,-r+y);  
        point(-p+x,-r+y);  
        point(-p+x,r+y);  
        point(r+x,p+y);  
        point(r+x,-p+y);  
        point(-r+x,-p+y);  
        point(-r+x,p+y);
    while(p<=r)  
     {  
      if(d<=0)  
             {  
        d=d+(4*p)+6;  
      }  
     else  
      {  
        d=d+(4*p)-(4*r)+10;  
        r=r-1;  
      }  
       p=p+1;  
        point(p+x,r+y);  
        point(p+x,-r+y);  
        point(-p+x,-r+y);  
        point(-p+x,r+y);  
        point(r+x,p+y);  
        point(r+x,-p+y);  
        point(-r+x,-p+y);  
        point(-r+x,p+y);
      }  
    }  
