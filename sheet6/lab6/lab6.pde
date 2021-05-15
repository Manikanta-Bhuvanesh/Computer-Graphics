import java.util.*;
int MAX_POINTS; 
int poly_size; 
int [][] poly_points;
int clipper_size; 
int clipper_points[][]={{150,150}, {150,200},{200,200},{200,150}};
void setup(){
  size(300,300);
 MAX_POINTS = 20; 
 poly_size = 3; 
 poly_points=new int[MAX_POINTS][2];
 poly_points[0][0]=100;
 poly_points[0][1]=150;
 poly_points[1][0]=200;
 poly_points[1][1]=250;
 poly_points[2][0]=300;
 poly_points[2][1]=200;
clipper_size = 4;
}

void draw(){
  for (int i=0; i<clipper_size; i++) 
    { 
        int k = (i+1) % clipper_size;
        clips(poly_points, poly_size, clipper_points[i][0], clipper_points[i][1], clipper_points[k][0], clipper_points[k][1]); 
    }
    rect(150,150,100,100);
    line(poly_points[0][0],poly_points[0][1], poly_points[1][0], poly_points[1][1]);
    line(poly_points[2][0],poly_points[2][1],poly_points[3][0],poly_points[3][1]);
}
void clips(int poly_points[][], int poly_size,int x1, int y1, int x2, int y2) 
{ 
  int new_points[][] = new int [MAX_POINTS][2];
  int new_poly_size = 0;
     
    for (int i = 0; i < poly_size; i++) 
    { 
        int k = (i+1) % poly_size; 
        int ix = poly_points[i][0], iy = poly_points[i][1]; 
        int kx = poly_points[k][0], ky = poly_points[k][1]; 
        int i_pos = (x2-x1) * (iy-y1) - (y2-y1) * (ix-x1); 
        int k_pos = (x2-x1) * (ky-y1) - (y2-y1) * (kx-x1); 

        if (i_pos < 0  && k_pos < 0) 
        {            
            new_points[new_poly_size][0] = kx; 
            new_points[new_poly_size][1] = ky; 
            new_poly_size++; 
        } 
        else if (i_pos >= 0  && k_pos < 0) 
        { 

            new_points[new_poly_size][0] = x_intersect(x1,y1, x2, y2, ix, iy, kx, ky); 
            new_points[new_poly_size][1] = y_intersect(x1,y1, x2, y2, ix, iy, kx, ky); 
            new_poly_size++; 
            new_points[new_poly_size][0] = kx; 
            new_points[new_poly_size][1] = ky; 
            new_poly_size++; 
        } 

        else if (i_pos < 0  && k_pos >= 0) 
        { 

            new_points[new_poly_size][0] = x_intersect(x1,y1, x2, y2, ix, iy, kx, ky); 
            new_points[new_poly_size][1] = y_intersect(x1, y1, x2, y2, ix, iy, kx, ky); 
            new_poly_size++; 
        } 
        else{
          
        }
    }  
    poly_size = new_poly_size; 
    for (int i = 0; i < poly_size; i++) 
    { 
        poly_points[i][0] = new_points[i][0]; 
        poly_points[i][1] = new_points[i][1]; 
    } 
} 
int x_intersect(int x1, int y1, int x2, int y2,int x3, int y3, int x4, int y4) 
{ 
    int num = (x1*y2 - y1*x2) * (x3-x4) - 
              (x1-x2) * (x3*y4 - y3*x4); 
    int den = (x1-x2) * (y3-y4) - (y1-y2) * (x3-x4); 
    return num/den; 
} 
int y_intersect(int x1, int y1, int x2, int y2,int x3, int y3, int x4, int y4) 
{ 
    int num = (x1*y2 - y1*x2) * (y3-y4) - (y1-y2) * (x3*y4 - y3*x4); 
    int den = (x1-x2) * (y3-y4) - (y1-y2) * (x3-x4); 
    return num/den; 
} 
