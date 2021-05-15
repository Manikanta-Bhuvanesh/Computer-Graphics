let t=0;
function setup() {
  createCanvas(300, 300,WEBGL);
}

function draw() {
  background(0);
  ambientLight(200);
  ambientMaterial(255,0,0);
  rotateY(t * 0.3);
  rotateX(t * 0.3); 
  box();
  t=t+0.05;
}
