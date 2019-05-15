class Second_Player
{
PVector secondPos;
PVector secondDir;
 Second_Player()
 {
   secondPos = new PVector(1100,750);
   secondDir = new PVector(0,0);
 }
  
  void Draw()
  {
   image(ship2,secondPos.x,secondPos.y,3860/20, 2059/20); 
   secondPos.add(secondDir);
     if(left2)
      {
      secondPos.x  = secondPos.x  - 5;
    }
   
   
   
    if(right2)
    {
      secondPos.x  = secondPos.x  + 5;
    }
   
   
  }
}
