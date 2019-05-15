class Health
{

  float width1 = 200;

  float healthX = 400;
  float healthY = 300;


  Health()
  {
    
  }
  
  void display()
  {
    fill(150,0,0);
    rect(healthX, healthY, width1, 25);
  }
}
