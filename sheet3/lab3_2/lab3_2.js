function setup() {
createCanvas(600,400);

}


function draw() {
  var inv = createInput('');
  inv.attribute('value','circle');
  inv.position(60,80);
  inv.style('width','70px');
  fill(0);
  circle(200,200,150,150);

}
