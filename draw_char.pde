import java.io.*;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.io.BufferedWriter;
import java.io.FileWriter;

// this scares me
boolean Starting=true;
String textBuffer = "";
String name="";
PrintWriter output=createWriter("name.txt");
BufferedReader reader= createReader("name.txt");
int[][] line = new int[32][4];
int mXPos1, mYPos1, mXPos2, mYPos2;
int i=0;
boolean press=true;
boolean enterPressed=false;

void drawChar()
{

  background(70,45,90);
  try
  {
    photo = loadImage("Player-123#.png");
    image(photo, mouseX, mouseY,  60,60); 
    name=parseFile();
    fill(0);text(name,mouseX,mouseY+70);
  }
  catch(Exception e) 
  {  
    if(i<1)
    {
      fill(20,20,90);textSize(20);
      for(int i=0;i<height*2;i+=50)
      {
        noStroke();
        quad(20+i, 0, 40+i, 0, 0, 40+i, 0, 20+i);
      }
      fill(200);
      text("Welcom to linear Monter Battle",width/2,height/2);
      text("Draw a starting character using the mouse to contuine",width/2,height-100);
    }
    if(Starting==true&&i!=31)
    {
      fill(200);
      textSize(13);text(i+"/31", width-40, height-20);
    }
    if (mXPos1>0&&mYPos1>0&&press==true)
    {
      line(mXPos1, mYPos1, mouseX, mouseY);
    }
    /////////////////////////////////////////////////////////
    strokeWeight(10);
    stroke(1);
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
    /////////////////////////////////////////////////////////
    
    {fill(212,175,55);textSize(50);textAlign(CENTER);text(textBuffer,width/2,450);fill(255);}
    
    
  }
}

String parseFile() 
{
  String line = null;
  String name="";
  BufferedReader reader = createReader("name.txt");
  try 
  {
    while ((line = reader.readLine()) != null) 
    {
      String[] pieces = split(line, TAB);
      name = pieces[0];
    }
    reader.close();   
  } 
  catch (IOException e) 
  {
   e.printStackTrace();
  }
  return name;
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
  {i++;}
}

 void keyReleased()
 {
  if(Starting==true&&i==31)
  {
    if(key>=97&&key<=122)
    {textBuffer+=key;}
    if(key>=65&&key<=90)
    {textBuffer+=key;}
    if(keyCode==32)
    {textBuffer+=" ";}
    if(keyCode == BACKSPACE && textBuffer.length()>0 )
    {textBuffer = textBuffer.substring(0,textBuffer.length()-1);}
  }
  else
  {textBuffer="";}
  if (key=='z')
  {i-=1;}
    
  if (key=='z'&&i==1)
  {
    line[0][0]=0;
    line[0][1]=0;
    line[0][2]=0;
    line[0][3]=0;
  }
  if (i<0)
  {i=0;}
  
  line[i][0]=0;
  line[i][1]=0;
  line[i][2]=0;
  line[i][3]=0;

  if (key==ENTER)
  {
    saveFrame("Player-123#.png");
    println("image saved");
    Starting=false;
    //output.close();
    exit(); 
  }
}
