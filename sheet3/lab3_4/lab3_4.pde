void setup(){
  size(800, 300);
  background(0);
}
 
void draw(){ 
  float k = 0;
  for(int i = 50; i < 500; i=i+(500/5)){
    
    pushMatrix();
    
      fill(255);
      translate(i, height/2);
      rotate(-PI/2);
      
      arc(0, 0, 50, 50, 0, PI*4);
      fill(0);
      k=k+5;
      arc(k, k, 50, 50, 0, PI*4);
      
    popMatrix();
  }
  fill(255);
  translate(550, height/2);
  rotate(-PI/2);
  arc(0, 0, 50, 50, 0, PI*4);
  
}
