//
//For right now this is extremly bare bones and ima make a default to help make the Attack mode since thats hardest to do in my opinion
//its just gonna be charmander
public class Pokemon
{
  //data
  //PImage yellowBall = loadImage("pennyWorth.png");
  PImage player;
  PImage enemy;
  boolean isPlayer;
  String type;
  int health;
  int level;
  float attackBuff;
  float defenseBuff;
  String name;
  String move1, move2, move3, move4;
  int pokePlayerX, pokePlayerY;
  int pokeEnemyX, pokeEnemyY;
  //boolean playerTurn = true;
  int damageDealt;
  String Stat;
  
  
  //boolean evolutionReady
  //constructor
  public Pokemon(String name,String type, int health, int level, boolean isPlayer)
  {
    this.isPlayer = isPlayer;
    this.name = name;
    this.type = type;
    this.health = health;
    this.level = level;
    attackBuff = 1;
    defenseBuff = 1;
    if(isPlayer)
    {
     pokePlayerX = (width/2)+300;
     pokePlayerY = (height/2)+500;
    }
    else
    {
     pokeEnemyX = (width/2)+900;
     pokeEnemyY = (height/2)+250; 
    }
  }
  //methods
  //make a system so we can do moves for certain pokemon fix next week
  void drawPokemon()
  {
    //player pokemon
   if(pokemonEncounter && isPlayer)
   {
     //add in here to add more pokemon for the player to use make the name in here with the way it looks*
     if(name == "Blue Ball")
     {
       player = loadImage("geogersBack.png");
       imageMode(CENTER);
       player.resize(400,400);
       image(player, pokePlayerX, pokePlayerY);
       imageMode(CORNER);
       /*
       stroke(2);
       fill(0,0,255);
       ellipse(pokePlayerX,pokePlayerY,200,200);
       */
     }
   }
   else if(!isPlayer)
   {
      //add pokemon in here for the enemy or to use during encounters 
      if(name == "Flower")
      {
        fill(0,255,0); 
        //PImage flower = "flower.png";
        //half the size than player when using pi images make this true
        //make sure to use the back sprite
        ellipse(pokeEnemyX,pokeEnemyY, 100,100);
      }
      if(name == "Yellow Ball")
      {
        //no it doint
        enemy = loadImage("pennyWorth.png");
        imageMode(CENTER);
        enemy.resize(200,200);
        image(enemy, pokeEnemyX, pokeEnemyY);
        imageMode(CORNER);
      }
   }
   
  }
  //prob need to be a void but try int for now
  //theres a better way to do this 
  public int moveDamageAssign()
  {
    //BLUE BALL DAMAGE ASSIGN
    
    if(move1 == "Bite")
    {
      damageDealt = 2;
      return damageDealt;
    }
    if(move2 == "Big Ball")
    {
      damageDealt = 2;
      return damageDealt;
    }
    if(move3 == "Blue Fire")
    {
      damageDealt = 2;
      return damageDealt;
    }
    if(move4 == "Scream")
    {
      damageDealt = 2;
      return damageDealt;
    }
    //new move set
    //YELLOW BALL DAMAGE ASSIGN 
    if(move1 == "Golden shower")
    {
      damageDealt = 2;
      return damageDealt;
    }
    if(move2 == "Wet slap")
    {
      damageDealt = 2;
      return damageDealt;
    }
    if(move3 == "Kidney Stone")
    {
      damageDealt = 2;
      return damageDealt;
    }
    if(move4 == "Drip Slip")
    {
      damageDealt = 2;
      return damageDealt;
    }
    return 0;
  }
  void moveSet()
  {
    //add movesets to each pokemon you want here either through a if or such
    //to add a moveset to a pokemon from before just add it here use the same ifs to add
    if(name == "Blue Ball" && level <= 25)
    {
      move1 = "Bite";
      move2 = "Big Ball";
      move3 = "Blue Fire";
      move4 = "Scream";
    }
    if(name == "Flower" && level <= 25)
    {
      move1 = "Envelope";
      move2 = "Roots";
      move3 = "Petal Slap";
      move4 = "Sprout";
    }
    if(name == "Yellow Ball" && level <= 25)
    {
      move1 = "Golden shower";
      move2 = "Wet slap";
      move3 = "Kidney Stone";
      move4 = "Drip Slip";
    }
  }
  //draws the Ui 
  void drawMoves()
  {
    fill(0);
    if(attackClicked && isPlayer)
    {
      text(move1,box1X+110,box1Y+60); //rumn
      text(move4,box4X+110,box4Y+60);
      text(move2,box2X+110,box2Y+60);
      text(move3,box3X+110,box3Y+60);
    }
  }
  
  void enemyTakeDamage()
  {
   Enemy.health = Enemy.health - damageDealt;
   if(Enemy.health <= 0)
   {
     playerWin = true;
     resetBattle();
   }
  }
  //THE ENEMY METHODS
  void playerTakeDamage()
  {
   PH.health = PH.health - damageDealt;
   if(PH.health <= 0)
   {
     enemyWin = true;
     resetBattle();
   }
  }
  
  //hopefully a very basic AI using a random chance to pick a move
  void enemyMoves()
  {
    if(playerTurn == false)
    {
      moveSet();
      float enemyMoveR = random(100);
      if(enemyMoveR <= 25)
      {
        
        Enemy.moveDamageAssign();
        enemyHitChance();
        //Enemy.playerTakeDamage();
      }
      else if(enemyMoveR <= 50)
      {
        
        Enemy.moveDamageAssign();
        enemyHitChance();
        //Enemy.playerTakeDamage();
      }
      else if(enemyMoveR <= 75)
      {
        
        Enemy.moveDamageAssign();
        enemyHitChance();
        //Enemy.playerTakeDamage();
      }
      else if (enemyMoveR <= 100)
      {
        
        Enemy.moveDamageAssign();
        enemyHitChance();
        //Enemy.playerTakeDamage();
      }
      playerTurn = true;
    }
    
  }
  
  
  
  
}
