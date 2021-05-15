function setup() {
 createCanvas(500, 500, WEBGL);
 perspective(PI/4,1,250, 2000);
}
function draw() {
 background(200);
 orbitControl();
 fill(255,0,0);
 rotateZ(-0.5);
 rotateX(-0.9);
 rotateY(-0.4);
 translate(-20, -70, -50);
 push();
 translate(-65, 0, tan(frameCount /25) * 120);
 cone();
 pop();
 push();
 translate(-45, 0, tan(frameCount /50 + (PI/5)) * 110);
 sphere();
 pop();
 push();
 translate(-15, 0, tan(frameCount / 30) * 95);
 box();
 pop();
}
