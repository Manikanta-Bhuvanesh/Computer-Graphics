function setup() {
createCanvas(600,400);

}


function draw() {
  var inv = createInput('');
  inv.attribute('value','ellipse');
  inv.position(50,60);
  inv.style('width','70px');
  fill('yellow');
  stroke('black');
  ellipse(200,200,300,150);
}
