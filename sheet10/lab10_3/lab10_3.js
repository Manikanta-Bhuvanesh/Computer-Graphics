function setup() {
  createCanvas(100, 100,WEBGL);
}

function draw() {
  background(255);
  let dirX = (mouseX / width - 0.5) * 2;
  let dirY = (mouseY / height - 0.5) * 2;
  directionalLight(0, 0, 255,-dirX, -dirY, -1);
  box(40);
}
