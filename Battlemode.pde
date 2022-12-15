//the moves are bound to the wrong buttons fix!!!!!!! and make moves work proper

//Cosmetics for boxes such as text needs to be in place
//in the future unload map and load battle mode to get more performance if thats even possible
//battlemode currently very under developed
boolean pokemonEncounter = true;
float randomRun;
int battleDelay = 0;
boolean battleDelayed;
int runTries = 0;
float hitChance;
float enemyHitChance;
int boxSizeX = 280;//size
int boxSizeY = 100;
//box 1 coords
int box1X = 980;
int box1Y = 910;

//box 2 coords
int box2X = box1X;
int box2Y = box1Y - 120;
//box 3 coords
int box3X = box1X - 300;
int box3Y = box1Y;
//box 4 coords
int box4X = box1X - 300;
int box4Y = box1Y - 120;
//textbox
float textBoxX = 50;
float textBoxY = box4Y;
float textBoxSX = 600;
float textBoxSY = 200;
//Text
float textX = textBoxX + 40;
float textY = textBoxY + 30;
String text = " ";
//int textBoxS = 0;
//to know if the box has been tapped
boolean runClicked = false;
boolean pokeClicked = false;
boolean attackClicked = false;
boolean foodClicked = false;
boolean choiceBoxActive = false;
//fun move checks
boolean move1Clicked = false;
boolean move2Clicked = false;
boolean move3Clicked = false;
boolean move4Clicked = false;
//Did you win?????
boolean playerWin = false;
boolean enemyWin = false;
//turns
boolean playerTurn = true;
///////////////////////////////////////////////////////

//makes background black if battlemode starts
//make the buttons have labels
void drawBattle()
{
  stroke(1);
  //Action boxes attack/flee etc
  fill(255, 255, 0);
  background(200, 230, 250);
  //Run option
  rect(box1X, box1Y, boxSizeX, boxSizeY,10);
  fill(0);
  
  //pokemon option
  fill(255, 255, 0);
  rect(box2X, box2Y, boxSizeX, boxSizeY,10);
  fill(0);
  
  //Attack option
  fill(255, 255, 0);
  rect(box3X, box3Y, boxSizeX, boxSizeY,10);
  fill(0);
  
  //Bag option
  fill(255, 255, 0);
  rect(box4X, box4Y, boxSizeX, boxSizeY,10);
  fill(0);
  fill(255);
  rect(textBoxX, textBoxY, textBoxSX, textBoxSY, 10);
  fill(0);
  textSize(20);
  text(text, textX, textY ); // puts text in the text box *updates*
  if(!attackClicked)
  {
    text(" Attack ",box4X+110,box4Y+60);
    text(" Run ",box1X+110,box1Y+60);
    text(" Pokemon ",box2X+110,box2Y+60);
    text(" Bag and consumables ",box3X+50,box3Y+60);
  }
}
void drawHealth()
{
  //Player bit
  noStroke();
  if(PH.health > 0)
   {
     fill(50,255*(PH.health/10.0),0); 
     noStroke();
     rect(width/2-100,height/2,200*(PH.health/10.0),20);
   }
   noFill(); 
   stroke(170); 
   strokeWeight(3);
   rect(width/2-100,height/2,200,20);
   noStroke();
   
  print("\nYour health --"+PH.health);
  //Enemy bit
  noStroke();
  if(Enemy.health > 0)
   {
     fill(50,255*(Enemy.health/10.0),0); 
     noStroke();
     rect(width/2,height/2-250,200*(Enemy.health/10.0),20);
   }
   noFill(); 
   stroke(170); 
   strokeWeight(3);
   rect(width/2,height/2-250,200,20);
   noStroke();
   
  print("\nYour health --"+PH.health);
}
/*
void drawEnemyHealth()
{
  
}
*/
//Methods for the funny buttons
void drawChoiceBox()
{
  //rectMode(CENTER);
  fill(255);
  stroke(3);
  rect(width-850, height/2, 500, 100);
  fill(0);
  textMode(CENTER);
  text("Do you Want to run? \n Yes (Y) or No (N)", width-690, height/2 + 40);
  //rectMode(CORNER);
}
//bag
void pokemonBagBox()
{
  drawPokemonBag();
}
//run
void runBox()
{

  //Run should work
  //makes tries being three you have three chances if you fail to much you have to fight
  //choice is fixed
  if (runTries <= 3)
  {
    //random number between 0 - 100
    randomRun = random(100);
    //25% chance
    if (randomRun <= 25)
    {
      text = "You got away safely!";
      pokemonEncounter = false;
      print("Run success");
    } else
    {
      text = "You couldn't get away!";

      //text("Run Failed ",textX,textY);//make in white box
      //make a way for them to try again besides just clicking the button over and over
      runTries++;
    }
  } else
  {
    text = "You can no longer escape";
    print("Tries exceeded");
    
  }

}
//attack
void attackBox()
{
  if(attackClicked)
  {
    PH.moveSet();
    //Enemy.EnemyMoves();
    //PH.drawMoves();
    //background(0, 255, 0);
    text = "Attack";
  }
}
//consumables
void ConsumablesBox()
{
  if (foodClicked)
  {
    background(255, 0, 0);
    text = "Food";
  }
}
//temp

void drawPokemonBag()
{
  background(0, 0, 255);
  text = "Pokemon";
}
//players hit chance
void hitChance()
{
  hitChance = random(100); 
  if(hitChance <= 85)
  {
    Enemy.enemyTakeDamage();
    text = "Your attack landed!";
  }
  else
  {
   text = "Your attack missed!";
  }
}
//enemys hit chance 
void enemyHitChance()
{
  enemyHitChance = random(100);
  if(enemyHitChance <= 85)
  {
    PH.playerTakeDamage();
  }
}
void resetBattle()
{
  if(playerWin == true)
  {
    pokemonEncounter = false;
    print("You win PH");
    PH.health = 10;
    Enemy.health = 10;
    attackClicked = false;
    //playerTurn = true;
  }
  else if(enemyWin == true)
  {
    pokemonEncounter = false;
    print("You Lose PH");
    //just so it can reset
    PH.health = 10;
    Enemy.health = 10;
    attackClicked = false;
    //playerTurn = true;
  }
}



//makes the buttons work
//The buttons currently output true for each box
// make diffrent screens show up for each option like a bag if your in the bag
//NEW BUG when you click attack once it acts like scream FIX btw key released no work
void mousePressed()
{
  press=true;
  mXPos1=mouseX;
  mYPos1=mouseY;
  if (pokemonEncounter == true)
  {
    if (mouseX >= box1X && mouseY >= box1Y)
    {
      if(!attackClicked)
      {
        runClicked = true;
        println("\n"+runClicked + "Run ");
        //runBox();
        choiceBoxActive = true;
        for(int i = 0; i < 5; i++)
        {
          pokeClicked = false;
          attackClicked = false;
          foodClicked = false;
        }
      }
      if(attackClicked && playerTurn == true)
      {
        if(!battleDelayed)
        {
          setBattleDelay(1);
          text = "You used "+ PH.move1;
          move1Clicked = true;
          hitChance();
          PH.moveDamageAssign();
          PH.enemyTakeDamage();
          print("\nEnemy health PH ----" + Enemy.health+"\n");
          playerTurn = false;
          //maybe a for loop or somthing to make it wait a bit so you can see the moved used
        }
      }
    } 
    else if (mouseX >= box2X && mouseY >= box2Y)
    {
      if(!attackClicked)
      {
        pokeClicked = true;
        println("\n"+pokeClicked + "Bag ");
        pokemonBagBox();
      }
      if(attackClicked && playerTurn == true)
      {
        if(!battleDelayed)
        {
          setBattleDelay(1);
          text = "You used "+ PH.move2;
          move2Clicked = true;
          hitChance();
          PH.moveDamageAssign();
          PH.enemyTakeDamage();
          print("\nEnemy health PH ----" + Enemy.health+"\n");
          playerTurn = false;
        }
      }
    } 
    else if (mouseX >= box3X && mouseY >= box3Y)
    {
     if(!attackClicked)
     {
       foodClicked = true;
       println("\n"+foodClicked + "food n stuff ");
       ConsumablesBox();
     }
     if(attackClicked && playerTurn == true)
      {
        if(!battleDelayed)
        {
          setBattleDelay(1);
          text = "You used "+ PH.move3;
          move3Clicked = true;
          hitChance();
          PH.moveDamageAssign();
          PH.enemyTakeDamage();
          print("\nEnemy health PH ----" + Enemy.health+"\n");
          playerTurn = false;
        }
      }
    } 
    else if (mouseX >= box4X && mouseY >= box4Y)
    {
      if(!attackClicked)
      {
        attackClicked = true;
        println("\n"+attackClicked + "Attack ");
        attackBox();
      }
      if(attackClicked && playerTurn == true)
      {
        if(!battleDelayed)
        {
          setBattleDelay(1);
          text = "You used "+ PH.move4;
          move4Clicked = true;
          hitChance();
          PH.moveDamageAssign();
          PH.enemyTakeDamage();
          print("\nEnemy health PH ----" + Enemy.health+"\n");
          playerTurn = false;
        }
        else
        {
          if(millis() > battleDelay)
          {
            battleDelayed = false;
          }
        }
      }
      
      
    }
  }
}
void setBattleDelay(int time)
{
  battleDelay = millis() + (time* 1000);
  battleDelayed = true;
}
