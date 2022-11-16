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
  //size(500, 500);
 fullScreen();
 
}


  void keyPressed()
  {
    if(key== 'w'   &&  playerY > 0 &&  map.returnRoute( currentMap)[playerY - 1][ playerX] != 3 && millis() % 5 == 0)
    {
      mapY--;
    }
    if(key== 's' && playerY != 100 && map.returnRoute( currentMap)[playerY + 1][ playerX] != 3  && millis() % 5 == 0)
    {
      mapY++;
    }
    if(key== 'a' && playerX > 0  && map.returnRoute( currentMap)[playerY][ playerX - 1] != 3 && millis() % 5 == 0)
    {
      mapX--;
    }
    if(key== 'd' && playerX != 100 && map.returnRoute( currentMap)[playerY][ playerX + 1] != 3 && millis() % 5 == 0 )
    {
      mapX++;
    }
    println("mapY " + mapY);
    println("mapX " + mapX);
    println("current route " + currentMap);
    
  }

void draw() 
{
  

//186,164,67
  for (int j = 0; j < 20; j++)
  {
    for (int i = 0; i < 22; i++)
    {
      //noStroke();
      
      if(i+mapX >= map.returnRoute( currentMap)[1].length || j+mapY >= map.returnRoute( currentMap).length|| i+mapX < 0 || j+mapY < 0)
      {
      fill(100,200,100);
      rect(i*(((height+width)/2)/20),j*(((height+width)/2)/20),(width/20),(((height+width)/2)/20));
      }
      else if(map.returnRoute( currentMap)[j+mapY][i+mapX] == 3)
      {
      fill(0,100,0);
     rect(i*(((height+width)/2)/20),j*(((height+width)/2)/20),(width/20),(((height+width)/2)/20));
      }
      else if(map.returnRoute( currentMap)[j+mapY][i+mapX] == 1)
      {
      fill(0,300,0);
      rect(i*(((height+width)/2)/20),j*(((height+width)/2)/20),(width/20),(((height+width)/2)/20));
      
      }
      else if(map.returnRoute( currentMap)[j+mapY][i+mapX] == 2)
      {
      fill(186,164,67);
    rect(i*(((height+width)/2)/20),j*(((height+width)/2)/20),(width/20),(((height+width)/2)/20));
      }
      else if(map.returnRoute( currentMap)[playerY][playerX] == 4)
      {
      fill(186,164,67);
      rect(i*(((height+width)/2)/20),j*(((height+width)/2)/20),(width/20),(((height+width)/2)/20));
      //currentMap ++;
     // if(currentMap == 0)
     // {
      //mapX  = 6;
      //mapY = 12;
      //}
      
      }
      if(i == 5 && j == 4)
      {
      fill(300,0,0);
      rect(i*(((height+width)/2)/20),j*(((height+width)/2)/20),(width/20),(((height+width)/2)/20));
      //rect(i*(((height+width)/2)/10),j*(((height+width)/2)/10),(width/10),(((height+width)/2)/10));
      playerX = mapX +5;
      playerY = mapY +4;
      }
      
      

    }
   }
  }
