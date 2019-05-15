class Screen
{
  boolean pressed;
  int buttonSize = 50;
  int sphereX = 600;
  int sphereY = 500;
  Screen()
  {
  }

  void Draw()
  {
    background(0);
    ellipse(sphereX, sphereY, buttonSize, buttonSize);
    textSize(40);
    textAlign(CENTER);
    text("BattleShip",width/2,200);
    if(mousePressed)
    {
     if(dist(mouseX,mouseY,sphereX,sphereY)<50)
     {
       screen = screen +1;
     }
    }
  }
}
