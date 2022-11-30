//Cosmetics for boxes such as text needs to be in place
//in the future unload map and load battle mode to get more performance if thats even possible
//battlemode currently very under developed
boolean pokemonEncounter = false;
float randomRun;
int runTries = 0;

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
//int textBoxS = 0;
//testing things for boxes
boolean runClicked = false;
boolean pokeClicked = false;
boolean attackClicked = false;
boolean foodClicked = false;
//makes background black if battlemode starts
void drawBattle()
{
  stroke(1);
  //Action boxes attack/flee etc
  fill(255,255,0);
  background(200,230,250);
  //Run option
  rect(box1X, box1Y, boxSizeX, boxSizeY);
  //pokemon option
  rect(box2X, box2Y, boxSizeX, boxSizeY);
  //Bag option
  rect(box3X, box3Y, boxSizeX, boxSizeY);
  //Attack option
  rect(box4X, box4Y, boxSizeX, boxSizeY);
  
  fill(255);
  rect(textBoxX,textBoxY,textBoxSX,textBoxSY);
  fill(0);
  text("IM cool",textX,textY );//testing
}
//Methods for the funny buttons
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
  if(runTries <= 3)
  {
    //random number between 0 - 100
    randomRun = random(100);
    //50% chance
    if(randomRun <= 50)
    {
      pokemonEncounter = false;

      print("\nRun Success ");// print text to white box
    }
    else
    {
      print("\nRun Failed ");//make in white box 
      //make a way for them to try again besides just clicking the button over and over
      runTries++;
    }
  }
  else
  {
   print("Tries exceeded");
   //make in the whit box make it more readable THIS IS A PLACEHOLDER FOR NOW FOR PROOF OF CONCEPT
  }
  
  //pokemonEncounter = false;
}
//attack
void attackBox()
{
  background(0,255,0);
}
//consumables
void ConsumablesBox()
{
  if(foodClicked)
  {
    background(255,0,0);
  }
}
//temp
void drawPokemonBag()
{
 background(0,0,255); 
}


//makes the buttons work
//The buttons currently output true for each box 
// make diffrent screens show up for each option like a bag if your in the bag
//buttons dont stick

 void mousePressed()
 {
   press=true;
   mXPos1=mouseX;
   mYPos1=mouseY;
   if(pokemonEncounter == true)
   {
     if(mouseX >= box1X && mouseY >= box1Y)
     {
       runClicked = true;
       println("\n"+runClicked + "Run ");
       runBox();
     }
     else if(mouseX >= box2X && mouseY >= box2Y)
     {
         pokeClicked = true;
         println("\n"+pokeClicked + "Bag ");
         pokemonBagBox();
     }
      else if(mouseX >= box3X && mouseY >= box3Y)
     {
         attackClicked = true;
         println("\n"+attackClicked + "Attack ");
         attackBox();
     }
      else if(mouseX >= box4X && mouseY >= box4Y)
     {
         foodClicked = true;
         println("\n"+foodClicked + "food n stuff ");
         ConsumablesBox();
     }
   }
   
 }
 
   /*
  if(mousePressed == true && mouseX <= box1X && mouseY <= box1Y) 
  {
    runClicked = true;
    println(runClicked);
    return true;
  }
  mouseX <= box1X && mouseX >= box1X && mouseY >= box1Y && mouseY <= box1Y
    */
