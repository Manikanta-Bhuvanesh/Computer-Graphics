var d,cols,rows,i,j,state;
var p,q,r,s;
var m=[];
function setup() {
createCanvas(500, 500);
d=15;
cols=width/d;
rows=height/d;
for(i=0;i<cols;i++)
{
m[i]=[];
for(j=0;j<rows;j++)
{
m[i][j]=floor(random(2));
}
}
}
function draw() {
background(255,69,0);
for(i=0;i<cols;i++)
{
for(j=0;j<rows;j++)
{
strokeWeight(2);
x=i*d;
y=j*d;
point(x,y);
p=createVector(x,y+d*0.6);
q=createVector(x+d*0.6, y+d);
r=createVector(x+d,y+d*0.6);
s=createVector(x+d*0.6,y);
state=(8*m[i][j])+(4*m[i][j+1])+(2*m[i+1][j+1])+(m[i+1][j]);
strokeWeight(2);
switch(state)
{
case 1:
line(r.x,r.y,s.x,s.y);
break;
case 2:
line(r.x,r.y,q.x,q.y);
break;
case 3:
line(q.x,q.y,s.x,s.y);
break;
case 4:
line(q.x,q.y,p.x,p.y);
break;
case 5:
line(q.x,q.y,r.x,r.y);
line(p.x,p.y,s.x,s.y);
break;
case 6:
line(p.x,p.y,r.x,r.y);
break;
case 7:
line(p.x,p.y,s.x,s.y);
break;
case 8:
line(p.x,p.y,s.x,s.y);
break;
case 9: 
line(p.x,p.y,r.x,r.y);
break;
case 10:
line(q.x,q.y,p.x,p.y);
line(r.x,r.y,s.x,s.y);
break;
case 11:
line(q.x,q.y,p.x,p.y);
break;
case 12:
line(q.x,q.y,s.x,s.y);
break;
case 13:
line(q.x,q.y,r.x,r.y);
break;
case 14:
line(s.x,s.y,r.x,r.y);
break;
default:
break;
}
}
}
}
