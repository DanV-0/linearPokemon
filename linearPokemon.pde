//besto gameo

// 1= path
//2 = grass
//3 = tree
int[][] map = new int[5][5];
int x;
int y;
void setup()
{
  size(500, 500);
  
  for (int i = 0; i < 5; i++)
  {
    for (int j = 0; j < 5; j++)
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

  for (int i = 0; i < 5; i++)
  {
    for (int j = 0; j < 5; j++)
    {
      if(map[i][j] == 3)
      {
      fill(300,300,300);
      square(i*50,j*50,50);
      }
      else if(map[i][j] == 1)
      {
      fill(0,300,0);
      square(i*50,j*50,50);
      }
      
    }
   }
  }
