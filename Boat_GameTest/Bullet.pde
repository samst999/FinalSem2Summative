 class Bullet
{
  PVector pos;
  PVector dir;
  boolean dead;
  int owner;
  Bullet(float _x, float _y, float xSpeed, float ySpeed, int _owner)
  {
    pos = new PVector(_x, _y);
    dir = new PVector(xSpeed,ySpeed);
    owner = _owner;
    dead = false;
  }
  void Draw()
  {
    pos.add(dir);
    if (pos.y > height || pos.y < 0)
    {
      dead = true;
    }
    fill(200.200,200);
      rect(pos.x, pos.y, 10,20);
  }


  void Update()
  {
    pos.add(dir);
    
    if (pos.y <90 || pos.y >760)
    {
      dead = true;
    }
  }
}
