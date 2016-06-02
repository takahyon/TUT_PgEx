size(800, 600);
int x; 
int y;
for (int i = 0; i<4; i++)
  for (int j = 0; j<4; j++) 
    for (int k = 0; k<4; k++)
      for (int l = 0; l<4; l++) {
        {
          {
            { 
              x = 85 + i* 160;
              y = 80 + j* 110 ;
              fill(255, 0, 0);
              rect(x, y, 150, 100);
              x=160 + k*160;
              y=130 + l*110;
              noStroke();
              fill(255, 255, 0);
              triangle(x+0, y+-30, x+-18, y+24, x+0, y+0);
              triangle(x+-29, y+-9, x+18, y+24, x+0, y+0);
              triangle(x+18, y+24, x+0, y+-30, x+0, y+0);
              triangle(x+29, y+-9, x+-29, y+-9, x+0, y+0);
              triangle(x+-18, y+23, x+30, y+-9, x+0, y+0);
            }
          }
        }
      }