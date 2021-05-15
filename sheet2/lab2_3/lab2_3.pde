int X0 = 0;
int Y0 = 0;
int X1 = 40;
int Y1 = 40;
size(640, 360);
//calculate dx , dy
int dx = X1 - X0;
int dy = Y1 - Y0;
int steps = abs(dx) > abs(dy) ? abs(dx) : abs(dy);
float Xinc = dx / (float) steps;
float Yinc = dy / (float) steps;
float X = X0;
float Y = Y0;
for (int i = 0; i <= steps; i++)
{
    point(X, Y);
    X += Xinc;
    Y += Yinc;
}
