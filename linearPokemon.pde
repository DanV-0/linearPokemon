//besto gameo

// 1= path
//2 = grass
//3 = tree
int[][] map = new int[100][100];
int playerX = 0;
int playerY = 90;
void setup()
{
  size(500, 500);
  for (int i = 0; i < 100; i++)
  {
    for (int j = 0; j < 100; j++)
    {
      map[i][j] = 1;
      if (j == 0 || j== 100 )
      {
        map[i][j] = 3;
      }
    }
  }
}

  void keyPressed()
  {
    if(key== 'w' && playerY >= 1)
    {
      playerY--;
    }
    if(key== 's'&& playerY != 100)
    {
      playerY++;
    }
    if(key== 'a' && playerX >= 1)
    {
      playerX--;
    }
    if(key== 'd' && playerX != 100)
    {
      playerX++;
    }
    println("playerY " + playerY);
    println("playerX " + playerX);
    println();
    
  }

void draw() 
{
  


  for (int i = 0; i < 10; i++)
  {
    for (int j = 0; j < 10; j++)
    {
      //noStroke();
      if(map[i+playerX][j+playerY] == 3)
      {
      fill(0,100,0);
      square(i*50,j*50,50);
      }
      else if(map[i+playerX][j+playerY] == 1)
      {
      fill(0,300,0);
      square(i*50,j*50,50);
      }
      
    }
   }
  }
