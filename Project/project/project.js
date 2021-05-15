p=0;
var fCar,bCar;
function setup() {
  createCanvas(1600,800);
  frameRate(60);
  fCar = new Car(400);
  bCar =new RCar(500);
}


function draw() {
  background(255);
  fill(0);
  rect(0,400,width,180);
  rect(710,200,280,600);
  rect(140, 70, 110, 250);
  fill('white');
  rect(0,475,100,10);
  rect(150,475,100,10);
  rect(300,475,100,10);
  rect(450,475,100,10);
  rect(600,475,100,10);
  rect(1000,475,100,10);
  rect(1150,475,100,10);
  rect(1300,475,100,10);
  rect(1450,475,100,10);
  rect(1600,475,100,10);
  if(p>=0&&p<240){
  fill(255,0,0);  
  ellipse(195, 120, 50, 50);
  fill(128,128,128);
  ellipse(195, 200, 50, 50);
  fill(128,128,128);
  ellipse(195, 280, 50, 50);
  p++;
  if(fCar.xpos<600&&fCar.xpos>550){
   fCar.display(); 
  }
  else{
    fCar.drive();
    fCar.display();
  }
  if(bCar.xpos1>1000&&bCar.xpos1<1050){
   bCar.display(); 
  }
  else{
     bCar.drive();
     bCar.display();
  }
  }
  else if(p>=240&&p<270){
  fill(128,128,128);  
  ellipse(195, 120, 50, 50);
  fill(255,255,0);
  ellipse(195, 200, 50, 50);
  fill(128,128,128);
  ellipse(195, 280, 50, 50);
  p++;
  if(fCar.xpos<600&&fCar.xpos>550){
   fCar.display(); 
  }
  else{
    fCar.drive();
    fCar.display();
  }
  if(bCar.xpos1>1000&&bCar.xpos1<1050){
   bCar.display(); 
  }
  else{
     bCar.drive();
     bCar.display();
  }
  }
  else if(p>=270&&p<510){
  fill(128,128,128);
  ellipse(195, 120, 50, 50);
  fill(128,128,128);
  ellipse(195, 200, 50, 50);
  fill(0,255,0);
  ellipse(195, 280, 50, 50);
  p++;
      fCar.drive();
      fCar.display();
      bCar.drive();
      bCar.display();
  }
  else{
    p=0;
  }
}
function RCar(x)
    {
     
      this.xpos1 = width;
      this.ypos1= x;
      this.speed = 4;
      this.c = color(0, 100, 50);
      this.drive = function()
      {
        if(this.xpos1 <0)
        {
          this.xpos1 = width;
        }
        this.xpos1 = this.xpos1 - this.speed;        
      }
      
      this.display = function()
      {
        fill(this.c);
        rect(this.xpos1, this.ypos1, 100, 50);
        fill(255);
        ellipse(this.xpos1 + 20, this.ypos1 + 45, 40, 40);
        ellipse(this.xpos1 + 80, this.ypos1 + 45, 40, 40);
      }
    }
function Car(x)
    {
      
      this.xpos = 0;
      this.ypos = x;
      this.speed = 4;
      this.c = color(150, 0, 50);
      this.drive = function()
      {
        if(this.xpos > width)
        {
          this.xpos = 0;
        }
        this.xpos = this.xpos + this.speed;        
      }
      
      this.display = function()
      {
        textSize(25);
        text('Traffic Signal Demonstration',100,50);
        fill(this.c);
        rect(this.xpos, this.ypos, 100, 50);
        fill(255);
        ellipse(this.xpos + 20, this.ypos + 45, 40, 40);
        ellipse(this.xpos + 80, this.ypos + 45, 40, 40);
      }
    }
