ArrayList<Bullet> parts = new ArrayList<Bullet>();

boolean left, right, fire = false;

boolean left2, right2, fire2 = false;

Second_Player Two;
 First_Player One;
Health H;
Health2 H2;
Screen S;
PImage ship;
PImage ship2;
PImage sea;
int lastTime = 0;
int reloadTime = 250;
int lastTime2 = 0;
int reloadTime2 = 250;
float r=0;
int score1 = 0;
int score2 = 0;
int screen = 1;
void setup()
{
  size(1200, 850);
  imageMode(CENTER);
  rectMode(CENTER);
  textMode(CENTER);
  ship = loadImage("original.png");
  ship.resize(3860/16, 2059/16);
  sea = loadImage("sea.jpeg");
  ship2 = loadImage("original2.png");
  ship2.resize(3860/16, 2059/16);
  One = new First_Player();
  Two = new Second_Player();
  H = new Health();
  H2 = new Health2();
  S = new Screen();

}

void draw()
{
  if(screen == 1)
  {
    S.Draw();
  }
  if(screen == 2)
  {
  image(sea, 400, 400);
  One.Draw();
  Two.Draw();
  H.display();
  H2.display();
  textSize(60);
  fill(255,255,0);
text(score1, 100,200);
text(score2, 1100,650);
  if (fire)
  {
    if (millis() - lastTime> reloadTime)
    {
      lastTime = millis();
      parts.add(new Bullet(One.firstPos.x, One.firstPos.y, 0, 5, 1));
      
    }
  }




  if (fire2)
  {
    if (millis() - lastTime2> reloadTime2)
    {
      lastTime2 = millis();
      parts.add(new Bullet(Two.secondPos.x, Two.secondPos.y, 0, -5, 2));
      
    }
  }

  for (int i=0; i < parts.size(); i++)
  {
    parts.get(i).Update();
    parts.get(i).Draw();
    if (dist(parts.get(i).pos.x, parts.get(i).pos.y, Two.secondPos.x, Two.secondPos.y)<50)
    {
      if (parts.get(i).owner == 1)
      {
        H2.width2 = H2.width2 - 2;
      }
    }
    if (dist(parts.get(i).pos.x, parts.get(i).pos.y, One.firstPos.x, One.firstPos.y)<50)
    {
      if (parts.get(i).owner == 2)
      {
        H.width1 = H.width1 - 2;
      }
    }
    if (H.width1 < 0)
    {
      H.width1 = 200;
      One.firstPos.x = 100;
      score2 = score2 + 100;
    }
    if (H2.width2 < 0)
    {
      H2.width2 = 200;
      Two.secondPos.x = 1100;
      score1 = score1 +100;
    }
    if (parts.get(i).dead == true)
    {
      parts.remove(i);
    }
  }
  }
}

void keyPressed()
{
  //player 1
  if(screen == 2)
  {
  if (key == 'a')
  {
    left = true;
  }

  if (key == 'd')
  {
    right = true;
  }

  if (key == 's')
  {
    fire = true;
  }

  //player 2

  if (keyCode == LEFT)
  {
    left2 = true;
  }

  if (keyCode == RIGHT)
  {
    right2 = true;
  }

  if (keyCode == DOWN)
  {
    fire2 = true;
  }
  }
}


void keyReleased()
{
 if(screen == 2)
 {
  if (key == 'a')
  {
    left = false;
  }

  if (key == 'd')
  {
    right = false;
  }

  if (key == 's')
  {
    fire = false;
  }

  //player 2
  if (keyCode == LEFT)
  {
    left2 = false;
  }

  if (keyCode == RIGHT)
  {
    right2 = false;
  }

  if (keyCode == DOWN)
  {
    fire2 = false;
  }
 }
}
