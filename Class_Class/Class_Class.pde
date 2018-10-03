//Variables 
PImage galaxy;
PImage comet;

int ballX = 0;
int ballY = 0;
int ballSpeed = 3;
color ballColor = color(255, 0, 0);
Ball firstBall;
Ball secondBall;
Ball thirdBall;
Ball fourthBall;
float ellipseX=100;
float ellipseY=400;
float speedX=1.2;
float speedY=1.2;
//For the second planet
int EllipseX=600;
float EllipseY=600;
int SpeedX=5;
int SpeedY=5;

void setup()
{

  size(800, 800);
  //Getting the images from the files and resizing it
  galaxy = loadImage("galaxy.jpg");
  galaxy.resize(800, 800);
  comet = loadImage("comet.png");
  comet .resize(200, 200);
  //Naming the balls and retriving it from the class
  firstBall = new Ball();
  secondBall = new Ball(600, 600, 1);
  thirdBall = new Ball(100, 250, 1);
  fourthBall = new Ball(-20, 250, 1);
}
void draw()
{ 
  //background
  image(galaxy, 0, 0);
//firstplanet movement
fill(255,0,0);
  ellipse(ellipseX, ellipseY, 50, 50);

  ellipseY= ellipseY-speedY;

  if (ellipseY<100)
  { 
    ellipseX=ellipseX+speedX;
    speedY=0;
  }

  if (ellipseX>600)
  {
    speedY=5;
    ellipseY=ellipseY+speedY;
    speedX=0;
  }



  if (ballX > width)
  {
    ballX = 100;
  }
//second planet movement 
fill(0,255,0);
  ellipse(EllipseX, EllipseY, 50, 50);
  EllipseY=EllipseY-0.7666666666666;
  if(EllipseY<100)
  {EllipseY=99;
  }
  //collision
  if (dist(ellipseX, ellipseY, EllipseX, EllipseY)<45)
  {
    background (0);
    fill(255,0,0);
    text("Universe Destroyed", 100, 400);
  }

//rendering the balls on the screen
  firstBall.Render();
  firstBall.Move();

  secondBall.Render();
  secondBall.Move();

  thirdBall.Render();
  thirdBall.Move();

  fourthBall.Render();
  fourthBall.Move();
}
