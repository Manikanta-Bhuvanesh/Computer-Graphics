let t=0;
function setup() {
  createCanvas(300, 300,WEBGL);
}

function draw() {
  background(255);
  lights();
  rotateY(t * 0.3);
  rotateX(t * 0.3); 
  box(100);
  t=t+0.05;
}
