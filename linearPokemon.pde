//besto gameo
/*----------------------------------------------\*
|            Pokemon Linear Version             |
|                  Made By                      |
|         Computer Science Year 3 Students      |
|    Caleb Harris, Jordan Lawson, James Kirk    |
\*----------------------------------------------/*
*/


// 1= tall grass  5= short grass
//2 = path
//3 = tree
//4 = loading next zone
PImage photo;
int mapX ;
int mapY ;
int playerX ;
int playerY ;
int currentMap ;
routes_Map map = new routes_Map();
int timingMillis = 0;
float random;

Pokemon PH = new Pokemon("Blue Ball", "ghost", 10, 20, true);
Pokemon Enemy = new Pokemon("Yellow Ball", "water", 10, 21, false);
void setup()
{ 
  photo = loadImage("Player-123#.png");
  //imageMode(CENTER); 
   loadGame(); 
  //size(500, 500);
  fullScreen();
  
}
//allows the players movement as well as implementing collision
// R and F are for testing for the battle bit 
void keyPressed()
{
  random = random(10);
  if (key== 'w'   &&  playerY > 0 &&  map.returnRoute( currentMap)[playerY - 1][ playerX] != 3 && moveSpeed(timingMillis))
  {
    mapY--;
    timingMillis = millis();
  }
  if (key== 's' && playerY != 100 && map.returnRoute( currentMap)[playerY + 1][ playerX] != 3  && moveSpeed(timingMillis))
  {
    mapY++;
    timingMillis = millis();
  }
  if (key== 'a' && playerX > 0  && map.returnRoute( currentMap)[playerY][ playerX - 1] != 3 && moveSpeed(timingMillis))
  {
    mapX--;
    timingMillis = millis();
  }
  if (key== 'd' && playerX != 100 && map.returnRoute( currentMap)[playerY][ playerX + 1] != 3 && moveSpeed(timingMillis))
  {
    mapX++;
    timingMillis = millis();
  }
  /*if(key == 'r')
  {
    if(!pokemonEncounter)
    {
      pokemonEncounter = true;
    }
  }*/
  if(key == 'f')
  {
    if(pokemonEncounter)
    {
      pokemonEncounter = false;
    }
  }
  if(key == 'y' && pokemonEncounter && choiceBoxActive)
  {
    choiceBoxActive = false;
    runBox();
    
  }
  if(key == 'n' && pokemonEncounter)
  {
    choiceBoxActive = false;
  }
  println("mapY " + mapY);
  println("mapX " + mapX);
  println("current route " + currentMap);
  if(key == 'q' && pokemonEncounter)
  {
    if(attackClicked == true)
    {
      attackClicked = false;
    }
  }
  
}

void draw() 
{
  try
  {
    photo = loadImage("Player-123#.png");

//draws the map by pulling the integers from the array
    //186,164,67
    for (int j = 0; j < 10; j++)
    {
      for (int i = 0; i < 11; i++)
      {
        noStroke();

        if (i+mapX >= map.returnRoute( currentMap)[1].length || j+mapY >= map.returnRoute( currentMap).length|| i+mapX < 0 || j+mapY < 0)
        {
          fill(0, 100, 0);
          rect(i*(((height+width)/2)/10), j*(((height+width)/2)/10), (width/9), (((height+width)/2)/10));
        }
        else if (map.returnRoute( currentMap)[j+mapY][i+mapX] == 1)
        {
          fill(100, 200, 100);
          rect(i*(((height+width)/2)/10), j*(((height+width)/2)/10), (width/9), (((height+width)/2)/10));
        } 
         else if (keyPressed && map.returnRoute( currentMap)[playerY][playerX] == 1 && random <= 1)
        {
          pokemonEncounter = true;
          fill(100, 200, 100);
          rect(i*(((height+width)/2)/10), j*(((height+width)/2)/10), (width/9), (((height+width)/2)/10));
        }
        else if (map.returnRoute( currentMap)[j+mapY][i+mapX] == 5)
        {
          fill(100, 300, 100);
          rect(i*(((height+width)/2)/10), j*(((height+width)/2)/10), (width/9), (((height+width)/2)/10));
        } 
        else if (map.returnRoute( currentMap)[j+mapY][i+mapX] == 2)
        {
          fill(186, 164, 67);
          rect(i*(((height+width)/2)/10), j*(((height+width)/2)/10), (width/9), (((height+width)/2)/10));
        } else if (map.returnRoute( currentMap)[j+mapY][i+mapX] == 3)
        {
          fill(0, 100, 0);
          rect(
          i*(((height+width)/2)/10), j*(((height+width)/2)/10), (width/9), (((height+width)/2)/10));
        } 
        else if (map.returnRoute( currentMap)[playerY][playerX] == 4 || map.returnRoute( currentMap)[playerY][playerX] >= 6 )
        {
          fill(300);
          rect(i*(((height+width)/2)/10), j*(((height+width)/2)/10), (width/9), (((height+width)/2)/10));
          changeMap();
         
        }
        else if(map.returnRoute( currentMap)[j+mapY][i+mapX] == 4  )
        {
        fill(300);
        rect(i*(((height+width)/2)/10), j*(((height+width)/2)/10), (width/9), (((height+width)/2)/10));
        
       
        }
        
        
        if (i == 5 && j == 4)
        {
          fill(300, 0, 0);
          rect(i*(((height+width)/2)/10), j*(((height+width)/2)/10), (width/9), (((height+width)/2)/10));
          //rect(i*(((height+width)/2)/10),j*(((height+width)/2)/10),(width/10),(((height+width)/2)/10));
          playerX = mapX +5;
          playerY = mapY +4;
          image(photo, i*(((height+width)/2)/10), j*(((height+width)/2)/10), (width/9), (((height+width)/2)/10));
        }
      }
    }
  }
  catch(Exception e) 
  { 
    drawChar();
  }
  //draws battlemode if pokemon is encountered
  if(pokemonEncounter)
  {
    
    
    drawBattle();
    noStroke();
    Enemy.drawPokemon();
    PH.drawPokemon();
    PH.drawMoves();
    //prob placeholder or in progress could change to only intiate if taking damage is needed
    //PH.moveDamageAssign();
    //Enemy.moveDamageAssign();
    Enemy.enemyMoves();
    drawHealth();
    
    if(choiceBoxActive)
    {
       drawChoiceBox(); 
    }
    
  }
  
}

boolean moveSpeed(int lastMove)
{
  if (lastMove +4 <= millis())
    return true;
  else
    return false;
}


void changeMap()
{
  if (map.returnRoute( currentMap)[playerY][playerX]  == 4 && currentMap == 1)
  {
        mapX  = -2;
    mapY = 11;
    currentMap ++;

  }
  
  if (map.returnRoute( currentMap)[playerY][playerX]  == 4 && currentMap == 2)
  {
    mapX  = 1;
    mapY = 1;
    currentMap ++;


  }
  
  if (map.returnRoute( currentMap)[playerY][playerX]  == 6 && currentMap == 2)
  {
   mapX  = 1;
   mapY = -3;
   currentMap --;

   
  }
  
  if (map.returnRoute( currentMap)[playerY][playerX]  == 6 && currentMap == 3)
  {
   mapX  = 14;
   mapY = 11;
   currentMap --;

  } 
}
//////////////////////////////////////////////////////////////////////////////////////////////
void loadGame() 
{
  
  try
  {
    //use the loadStrings() method to pull the lines of your save file into a String array
    String[] data= loadStrings("save.txt");
   

     playerX =Integer.parseInt(data[0]);
     playerY =Integer.parseInt(data[1]);   
     mapX =Integer.parseInt(data[2]);
     mapY =Integer.parseInt(data[3]);
     currentMap =Integer.parseInt(data[4]);

  }
  catch(Exception e)
  {
    println("SOMETHING WENT WRONG#2");
   
    //Loads default data
     currentMap = 1;
     mapX = 0;
     mapY = 0;
     playerX = 0;
     playerY = 0;
  }
}
/////////////////////////////////////////////////////////////////////////////////////////////////
