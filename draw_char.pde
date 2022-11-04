
int[][] line = new int[32][4];
int value = 0;
int mXPos1, mYPos1, mXPos2, mYPos2;
int i=0;
int chooseObject=1;
boolean press=true;
void drawChar()
{
  noFill();
  background(100, 70, 100);
  if (mXPos1>0&&mYPos1>0&&press==true)
  {
    line(mXPos1, mYPos1, mouseX, mouseY);
  }
  
  text(i+"/31", 10, width=20);
  if (chooseObject==1)
  {
    line(line[0][0], line[0][1], line[0][2], line[0][3]);
    line(line[1][0], line[1][1], line[1][2], line[1][3]);
    line(line[2][0], line[2][1], line[2][2], line[2][3]);
    line(line[3][0], line[3][1], line[3][2], line[3][3]);
    line(line[4][0], line[4][1], line[4][2], line[4][3]);
    line(line[5][0], line[5][1], line[5][2], line[5][3]);
    line(line[6][0], line[6][1], line[6][2], line[6][3]);

    line(line[7][0], line[7][1], line[7][2], line[7][3]);
    line(line[8][0], line[8][1], line[8][2], line[8][3]);
    line(line[9][0], line[9][1], line[9][2], line[9][3]);
    line(line[10][0], line[10][1], line[10][2], line[10][3]);
    line(line[11][0], line[11][1], line[11][2], line[11][3]);

    line(line[12][0], line[12][1], line[12][2], line[12][3]);
    line(line[13][0], line[13][1], line[13][2], line[13][3]);
    line(line[14][0], line[14][1], line[14][2], line[14][3]);
    line(line[15][0], line[15][1], line[15][2], line[15][3]);
    line(line[16][0], line[16][1], line[16][2], line[16][3]);
    line(line[17][0], line[17][1], line[17][2], line[17][3]);
    line(line[18][0], line[18][1], line[18][2], line[18][3]);
    line(line[19][0], line[19][1], line[19][2], line[19][3]);

    line(line[20][0], line[20][1], line[20][2], line[20][3]);
    line(line[21][0], line[21][1], line[21][2], line[21][3]);
    line(line[22][0], line[22][1], line[22][2], line[22][3]);
    line(line[23][0], line[23][1], line[23][2], line[23][3]);
    line(line[24][0], line[24][1], line[24][2], line[24][3]);
    line(line[25][0], line[25][1], line[25][2], line[25][3]);

    line(line[26][0], line[26][1], line[26][2], line[26][3]);
    line(line[27][0], line[27][1], line[27][2], line[27][3]);
    line(line[28][0], line[28][1], line[28][2], line[28][3]);
    line(line[29][0], line[29][1], line[29][2], line[29][3]);
    line(line[30][0], line[30][1], line[30][2], line[30][3]);
    line(line[31][0], line[31][1], line[31][2], line[31][3]);
  }

  if (chooseObject==2)
  {
    ellipse(line[0][0], line[0][1], line[0][2], line[0][3]);
    ellipse(line[0][0], line[0][1], line[0][2], line[0][3]);
    ellipse(line[1][0], line[1][1], line[1][2], line[1][3]);
    ellipse(line[2][0], line[2][1], line[2][2], line[2][3]);
    ellipse(line[3][0], line[3][1], line[3][2], line[3][3]);
    ellipse(line[4][0], line[4][1], line[4][2], line[4][3]);
    ellipse(line[5][0], line[5][1], line[5][2], line[5][3]);
    ellipse(line[6][0], line[6][1], line[6][2], line[6][3]);

    ellipse(line[7][0], line[7][1], line[7][2], line[7][3]);
    ellipse(line[8][0], line[8][1], line[8][2], line[8][3]);
    ellipse(line[9][0], line[9][1], line[9][2], line[9][3]);
    ellipse(line[10][0], line[10][1], line[10][2], line[10][3]);
    ellipse(line[11][0], line[11][1], line[11][2], line[11][3]);

    ellipse(line[12][0], line[12][1], line[12][2], line[12][3]);
    ellipse(line[13][0], line[13][1], line[13][2], line[13][3]);
    ellipse(line[14][0], line[14][1], line[14][2], line[14][3]);
    ellipse(line[15][0], line[15][1], line[15][2], line[15][3]);
    ellipse(line[16][0], line[16][1], line[16][2], line[16][3]);
    ellipse(line[17][0], line[17][1], line[17][2], line[17][3]);
    ellipse(line[18][0], line[18][1], line[18][2], line[18][3]);
    ellipse(line[19][0], line[19][1], line[19][2], line[19][3]);

    ellipse(line[20][0], line[20][1], line[20][2], line[20][3]);
    ellipse(line[21][0], line[21][1], line[21][2], line[21][3]);
    ellipse(line[22][0], line[22][1], line[22][2], line[22][3]);
    ellipse(line[23][0], line[23][1], line[23][2], line[23][3]);
    ellipse(line[24][0], line[24][1], line[24][2], line[24][3]);
    ellipse(line[25][0], line[25][1], line[25][2], line[25][3]);

    ellipse(line[26][0], line[26][1], line[26][2], line[26][3]);
    ellipse(line[27][0], line[27][1], line[27][2], line[27][3]);
    ellipse(line[28][0], line[28][1], line[28][2], line[28][3]);
    ellipse(line[29][0], line[29][1], line[29][2], line[29][3]);
    ellipse(line[30][0], line[30][1], line[30][2], line[30][3]);
    ellipse(line[31][0], line[31][1], line[31][2], line[31][3]);
  }
}
void mousePressed()
{
  press=true;
  mXPos1=mouseX;
  mYPos1=mouseY;
}
void mouseReleased()
{
  press=false;
  mXPos2=mouseX;
  mYPos2=mouseY;

  println(i+" ");
  line[i][0]=mXPos1;
  line[i][1]=mYPos1;
  line[i][2]=mXPos2;
  line[i][3]=mYPos2;

  if (i<31)
    i++;
}
void keyReleased()
{
  //print(chooseObject);
  if (key=='x'&&chooseObject==1)
    chooseObject=2;
  else
    chooseObject=1;
  if (key=='z')
    i-=1;
  if (key=='z'&&i==1)
  {
    line[0][0]=0;
    line[0][1]=0;
    line[0][2]=0;
    line[0][3]=0;
  }
  if (i<0)
    i=0;
  line[i][0]=0;
  line[i][1]=0;
  line[i][2]=0;
  line[i][3]=0;


  if (key=='c')
  {
    saveFrame("line-######.png");
    println("image saved");
  }
}
