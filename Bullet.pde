class Bullet extends Floater {
  double myDirectionX;
  double myDirectionY;
  public Bullet(Spaceship emily) {
    double dRadians =super.myPointDirection*(Math.PI/180);
    myDirectionX = 5 * Math.cos(dRadians) + emily.getDirectionX();
    myDirectionY = 5 * Math.sin(dRadians) + emily.getDirectionY();
    myDirectionX = emily.myCenterX;
    myDirectionY = emily.myCenterX;
    myCenterX = emily.getX();
    myCenterY = emily.getY();
    myXspeed = emily.getXSpeed();
    myYspeed = emily.getYSpeed();
    myPointDirection = emily.getPointDirection();
    accelerate(5);
  }
  public void show() {
    fill(255, 0, 0);
    ellipse((float)myCenterX, (float)myCenterY, 35, 10);
  }
  public void move()
  {
    myCenterX += myDirectionX;
    myCenterY += myDirectionY;
  }
  public float getX() {
    return (float)myCenterX;
  }
  public float getY() {
    return (float)myCenterY;
  }
}
