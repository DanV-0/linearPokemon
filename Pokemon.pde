//
//For right now this is extremly bare bones and ima make a default to help make the Attack mode since thats hardest to do in my opinion
//its just gonna be charmander
public class Pokemon
{
  //data
  boolean isPlayer;
  String type;
  int health;
  int level;
  float attackBuff;
  float defenseBuff;
  String name;
  String move1, move2, move3, move4;
  int pokeX, pokeY;
  
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
     pokeX = (width/2)+300;
     pokeY = (height/2)+500;
    }
  }
  //methods
  //make a system so we can do moves for certain pokemon fix next week
  void drawPokemon()
  {
   if(pokemonEncounter)
   {
     stroke(2);
     fill(0,0,255);
     ellipse(pokeX,pokeY,200,200);
   }
   
  }
  void moveSet()
  {
    //add movesets to each pokemon you want here either through a if or such
    if(name == "placeholder" && level <= 25)
    {
      move1 = "Bite";
      move2 = "Buff";
      move3 = "tail whip";
      move4 = "debuff";
    }
  }
  
  void drawMoves()
  {
    if(attackClicked)
    {
      text(move1,box1X+110,box1Y+60); 
    }
  }
  
  
  
  
}
