class First_Player
{
PVector firstPos;
PVector firstDir;
 First_Player()
 {
   firstPos = new PVector(100,100);
   firstDir = new PVector(0,0);
 }
  
  void Draw()
  {
   image(ship,firstPos.x,firstPos.y,3860/20, 2059/20); 
   firstPos.add(firstDir);
   
   
    if(left)
    {
      firstPos.x  = firstPos.x  - 5;
    }
  
    if(right)
    {
      firstPos.x  = firstPos.x  + 5;
    }
   
   
  }
}
  
