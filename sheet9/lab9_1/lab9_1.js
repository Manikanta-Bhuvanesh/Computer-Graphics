var x1,y1,x2,y2,x3,y3,x4,y4,x5,y5,dx,dy;
function setup() {
createCanvas(800,800);
background(255);
x1=100;
y1=100;
x2=400;
y2=200;
x3=300;
y3=400;
x4=200;
y4=400;
x5=500;
y5=700;
dx=600;
dy=400;
}
function draw() {
 point(x1,y1);
 point(x2,y2);
 point(x3,y3);
 point(x4,y4);
 point(x5,y5);
 for(var k=0;k<=1;k+=0.00005) {
 dx=(Math.pow((1-k),4))*x1+4*(Math.pow((1-k),3))*k*x2+6*(Math.pow((1-k),2))*(Math.pow(k,2))*x3+4*(1-k)*(Math.pow(k,3))*x4+(Math.pow(k,5))*x5;
 dy=(Math.pow((1-k),4))*y1+4*(Math.pow((1-k),3))*k*y2+6*(Math.pow((1-k),2))*(Math.pow(k,2))*y3+4*(1-k)*(Math.pow(k,3))*y4+(Math.pow(k,5))*y5;
 point(dx,dy);
}
}
