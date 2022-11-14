//besto gameo

// 1= gras
//2 = path
//3 = tree


int mapX = 0;
int mapY = 0;
int playerX = 0;
int playerY = 0;
int currentMap = 0;
routes_Map map = new routes_Map();
//int map[][] = routes_Map.returnRoute(currentMap).returnedMap ;

void setup()
{
  size(500, 500);
 
 
}


  void keyPressed()
  {
    if(key== 'w'   &&  playerY > 0 &&  map.returnRoute( currentMap)[playerY - 1][ playerX] != 3)
    {
      mapY--;
    }
    if(key== 's' && playerY != 100 && map.returnRoute( currentMap)[playerY + 1][ playerX] != 3  )
    {
      mapY++;
    }
    if(key== 'a' && playerX > 0  && map.returnRoute( currentMap)[playerY][ playerX - 1] != 3 )
    {
      mapX--;
    }
    if(key== 'd' && playerX != 100 && map.returnRoute( currentMap)[playerY][ playerX + 1] != 3)
    {
      mapX++;
    }
    println("mapY " + mapY);
    println("mapX " + mapX);
    println();
    
  }

void draw() 
{
  

//186,164,67
  for (int j = 0; j < 10; j++)
  {
    for (int i = 0; i < 10; i++)
    {
      noStroke();
      
      if(i+mapX >= 100 || j+mapY >= 100|| i+mapX <= 0 || j+mapY <= 0)
      {
      fill(0,100,0);
      square(i*50,j*50,50);
      }
      else if(map.returnRoute( currentMap)[j+mapY][i+mapX] == 3)
      {
      fill(0,100,0);
      square(i*50,j*50,50);
      }
      else if(map.returnRoute( currentMap)[j+mapY][i+mapX] == 1)
      {
      fill(0,300,0);
      square(i*50,j*50,50);
      
      }
      else if(map.returnRoute( currentMap)[j+mapY][i+mapX] == 2)
      {
      fill(186,164,67);
      square(i*50,j*50,50);
      }
      else if(map.returnRoute( currentMap)[j+mapY][i+mapX] == 4)
      {
      fill(186,164,67);
      square(i*50,j*50,50);
      currentMap = 0;
      
      }
      if(i == 4 && j == 4)
      {
      fill(300,0,0);
      square(i*50,j*50,50);
      playerX = mapX +4;
      playerY = mapY +4;
      }
      
      

    }
   }
  }
