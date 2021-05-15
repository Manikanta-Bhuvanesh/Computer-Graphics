let t=0;
function setup() {
  createCanvas(100, 100,WEBGL);
}

function draw() {
  background(255);
  rotateY(t * 0.3);
  rotateX(t * 0.3); 
  let dirX = mouseX - width / 2;
  let dirY = mouseY - height / 2;
  pointLight(255, 0, 0, dirX, dirY, 60);
  box(40);
  t=t+0.05;
}
