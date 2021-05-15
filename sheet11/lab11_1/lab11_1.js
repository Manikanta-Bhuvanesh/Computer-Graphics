let scroll = [];
let x;
let y;
let z;
let p = 20;

function setup() {
  createCanvas(400, 400, WEBGL);
  for (var i = 0; i < 3; i++) {
    if (i === 2) {
      scroll[i] = createSlider(15, 400, 200);
    } else {
      scroll[i] = createSlider(-200, 400, 0);
    }
    p = map(i, 0,5, 10, 100);
    scroll[i].position(50, height+p);
    scroll[i].style('width', '300px');
  }
}

function draw() {
  background(60);
  x = scroll[0].value();
  y = scroll[1].value();
  z = scroll[2].value();
  camera(x, y, z, 0, 0, 0, 1, 1, 1);
  fill(255,69, 0);
  cylinder(50,100);
}
