int x =  100;
int y = 100;
int x1 = 300;
int y1 = 100;
int dx = 5;
int dy = 2;
int dx1 = -3;
int dy1 = -2;
void setup(){
  size(640,480);
}
void draw(){
  background(255);
  fill(255,0,0);
  ellipse(x,y,50,50);
  fill(0,255,0);
  ellipse(x1,y1,50,50);
  x+=dx;
  y+=dy;
  x1+=dx1;
  y1+=dy1;

  if (x+25 > width || x-25 < 0) {
    dx *= -1;
  }
  if (y+25 > height || y-25 < 0) {
    dy *= -1;
  }
  if (x1+25 > width || x1-25 < 0) {
    dx1 *= -1;
  }
  if (y1+25 > height || y1-25 < 0) {
    dy1 *= -1;
  }
}
