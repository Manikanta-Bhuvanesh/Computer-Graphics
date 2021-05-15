int p = 0;
void setup() {
  size(400,400);
  frameRate(1);
}

void draw() {
  background(255);
  fill(0);
  rect(140, 70, 110, 250);
  if(p==0){
  fill(255,0,0);  
  ellipse(195, 120, 50, 50);
  fill(128,128,128);
  ellipse(195, 200, 50, 50);
  fill(128,128,128);
  ellipse(195, 280, 50, 50);
  p++;
  }
  else if(p==1){
  fill(128,128,128);  
  ellipse(195, 120, 50, 50);
  fill(255,255,0);
  ellipse(195, 200, 50, 50);
  fill(128,128,128);
  ellipse(195, 280, 50, 50);
  p++;
  }
  else{
  fill(128,128,128);
  ellipse(195, 120, 50, 50);
  fill(128,128,128);
  ellipse(195, 200, 50, 50);
  fill(0,255,0);
  ellipse(195, 280, 50, 50);
  p=0;
  }
}
