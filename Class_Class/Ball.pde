class Ball
{
  //Member Variables
  float x;
  float y;
  float speed;
  int w;
  int h;

  // Default Constructer
  Ball()
  {
    x = 0;
    y = -1.3;
    speed = 1;

    w = 10;
    h = 10;
  }

  //Overloaded Constructer
  Ball(int _x, int _y, int _sp)
  {
    x = _x;
    y = _y;
    speed = _sp;

    w = 10;
    h = 10;
  }

  //Actions. What can it do?
  void Render()
  {
    image(comet, x, y);
  }

  void Move()
  {
    x = x + speed;
    y = y + speed;
    if (x > width)
    {
      x = -100;
    }
  }
}
