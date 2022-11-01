//besto gameo

// 1= path
//2 = grass
//3 = tree
int[][] map = new int[100][100];
int playerX = 0;
int playerY = 0;
void setup()
{
  size(500, 500);
  for (int i = 0; i < 100; i++)
  {
    for (int j = 0; j < 100; j++)
    {
      map[i][j] = 3;
      if (j == 3)
      {
        map[i][j] = 1;
      }
    }
  }
}

void draw() 
{

  for (int i = 0; i < 10; i++)
  {
    for (int j = 0; j < 10; j++)
    {
      noStroke();
      if(map[i+playerX][j+playerY] == 3)
      {
      fill(0,100,0);
      square(i+50,j*50,50);
      }
      else if(map[i][j] == 1)
      {
      fill(0,300,0);
      square(i*50,j*50,50);
      }
      
    }
   }
  }
